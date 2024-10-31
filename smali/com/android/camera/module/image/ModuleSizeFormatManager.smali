.class public Lcom/android/camera/module/image/ModuleSizeFormatManager;
.super Ljava/lang/Object;


# static fields
.field public static final AI_SR_SIZE_LIST:[Lcom/android/camera/CameraSize;

.field private static final TAG:Ljava/lang/String; = "CameraSizeManager"


# instance fields
.field public mAlgorithmOutputSize:Lcom/android/camera/CameraSize;

.field public mBinningPictureSize:Lcom/android/camera/CameraSize;

.field public mBokehDepthSize:Lcom/android/camera/CameraSize;

.field public mBokehMainRawSize:Lcom/android/camera/CameraSize;

.field public mBokehSubRawSize:Lcom/android/camera/CameraSize;

.field public mFakeSatTeleOutputSize:Lcom/android/camera/CameraSize;

.field public mFakeSatTelePictureSize:Lcom/android/camera/CameraSize;

.field public mFakeSatUltraTeleOutputSize:Lcom/android/camera/CameraSize;

.field public mFakeSatUltraTelePictureSize:Lcom/android/camera/CameraSize;

.field public mFakeSatUltraWideOutputSize:Lcom/android/camera/CameraSize;

.field public mFakeSatUltraWidePictureSize:Lcom/android/camera/CameraSize;

.field public mFakeSatWideOutputSize:Lcom/android/camera/CameraSize;

.field public mFakeSatWidePictureSize:Lcom/android/camera/CameraSize;

.field public mMacroPictureSize:Lcom/android/camera/CameraSize;

.field public mOutputPictureFormat:I

.field public mOutputPictureSize:Lcom/android/camera/CameraSize;

.field public mRawSizeOfMacro:Lcom/android/camera/CameraSize;

.field public mRawSizeOfTele:Lcom/android/camera/CameraSize;

.field public mRawSizeOfUltraTele:Lcom/android/camera/CameraSize;

.field public mRawSizeOfUltraWide:Lcom/android/camera/CameraSize;

.field public mRawSizeOfWide:Lcom/android/camera/CameraSize;

.field public mSensorRawImageSize:Lcom/android/camera/CameraSize;

.field public mSubPictureSize:Lcom/android/camera/CameraSize;

.field public mTelePictureSize:Lcom/android/camera/CameraSize;

.field private mUltraTelePictureSize:Lcom/android/camera/CameraSize;

.field public mUltraWidePictureSize:Lcom/android/camera/CameraSize;

.field public mVideoSize:Lcom/android/camera/CameraSize;

.field public mWidePictureSize:Lcom/android/camera/CameraSize;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/camera/CameraSize;

    new-instance v1, Lcom/android/camera/CameraSize;

    const/16 v2, 0x2f00

    const/16 v3, 0x2340

    invoke-direct {v1, v2, v3}, Lcom/android/camera/CameraSize;-><init>(II)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/camera/CameraSize;

    const/16 v2, 0x2d10

    const/16 v3, 0x21cc

    invoke-direct {v1, v2, v3}, Lcom/android/camera/CameraSize;-><init>(II)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->AI_SR_SIZE_LIST:[Lcom/android/camera/CameraSize;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getJpegThumbnailSize(Lcom/android/camera/module/common/ModuleCameraManagerInterface;)Lcom/android/camera/CameraSize;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraManager"
        }
    .end annotation

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedThumbnailSizes(Lcom/android/camera2/CameraCapabilities;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v1

    int-to-double v1, v1

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result p0

    int-to-double v3, p0

    div-double/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->getOptimalJpegThumbnailSize(Ljava/util/List;D)Lcom/android/camera/CameraSize;

    move-result-object p0

    return-object p0
.end method

.method public static getLimitSize(Ljava/util/List;Lcom/android/camera/module/common/ModuleCameraManagerInterface;I)Lcom/android/camera/CameraSize;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "supportedSizes",
            "cameraManager",
            "moduleIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;",
            "Lcom/android/camera/module/common/ModuleCameraManagerInterface;",
            "I)",
            "Lcom/android/camera/CameraSize;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getActiveArraySize(Lcom/android/camera2/CameraCapabilities;)Landroid/graphics/Rect;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLimitSize: maxSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "CameraSizeManager"

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    mul-int/2addr v1, v0

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getBogusCameraId()I

    move-result v0

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    invoke-static {p0, v1, p2, v0, p1}, Lcom/android/camera/PictureSizeManager;->initialize(Ljava/util/List;IIILcom/android/camera2/CameraCapabilities;)V

    invoke-static {p2}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(I)Lcom/android/camera/CameraSize;

    move-result-object p0

    return-object p0
.end method

.method public static isLimitSize(Lcom/android/camera/module/common/ModuleCameraManagerInterface;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraManager"
        }
    .end annotation

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p0

    invoke-virtual {p0}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->oo0O()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static updateAlgorithmPreviewSizeAndFormat(Ljava/util/List;Lcom/android/camera/CameraSize;DLcom/android/camera/module/common/ModuleCameraManagerInterface;)V
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/android/camera/CameraSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "previewSizes",
            "previewSize",
            "ratio",
            "cameraManager"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;",
            "Lcom/android/camera/CameraSize;",
            "D",
            "Lcom/android/camera/module/common/ModuleCameraManagerInterface;",
            ")V"
        }
    .end annotation

    invoke-interface {p4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v0

    invoke-virtual {v0}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00OO0oO()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p2, p3, p1}, Lcom/android/camera/Util;->getAlgorithmPreviewSize(Ljava/util/List;DLcom/android/camera/CameraSize;)Lcom/android/camera/CameraSize;

    move-result-object p0

    invoke-interface {p4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/camera2/Camera2Proxy;->setAlgorithmPreviewSize(Lcom/android/camera/CameraSize;)V

    goto :goto_0

    :cond_0
    invoke-interface {p4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera2/Camera2Proxy;->setAlgorithmPreviewSize(Lcom/android/camera/CameraSize;)V

    :goto_0
    invoke-interface {p4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p0

    const/16 p1, 0x23

    invoke-virtual {p0, p1}, Lcom/android/camera2/Camera2Proxy;->setAlgorithmPreviewFormat(I)V

    return-void
.end method

.method private updatePortraitRawSize(Lcom/android/camera2/CameraCapabilities;Ljava/lang/String;Z)Z
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isMiviBokehSuperNightSupported"
        type = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cc",
            "ratio",
            "get1XSize"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    const/16 v0, 0x20

    if-eqz p3, :cond_0

    invoke-static {p1, p2, v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getOptimalMasterBokeh1XSize(Lcom/android/camera2/CameraCapabilities;Ljava/lang/String;I)Landroid/util/Size;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getOptimalMasterBokehSize(Lcom/android/camera2/CameraCapabilities;Ljava/lang/String;I)Landroid/util/Size;

    move-result-object v1

    :goto_0
    if-eqz p3, :cond_1

    invoke-static {p1, p2, v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getOptimalSlaveBokeh1XSize(Lcom/android/camera2/CameraCapabilities;Ljava/lang/String;I)Landroid/util/Size;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-static {p1, p2, v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getOptimalSlaveBokehSize(Lcom/android/camera2/CameraCapabilities;Ljava/lang/String;I)Landroid/util/Size;

    move-result-object p1

    :goto_1
    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    new-instance p2, Lcom/android/camera/CameraSize;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result p3

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-direct {p2, p3, v0}, Lcom/android/camera/CameraSize;-><init>(II)V

    iput-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mBokehMainRawSize:Lcom/android/camera/CameraSize;

    new-instance p2, Lcom/android/camera/CameraSize;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-direct {p2, p3, p1}, Lcom/android/camera/CameraSize;-><init>(II)V

    iput-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mBokehSubRawSize:Lcom/android/camera/CameraSize;

    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return p0
.end method

.method public static updateTuningBufferSize(ZLcom/android/camera/module/common/ModuleCameraManagerInterface;)V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportMtkIspHidl"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "updateRawTuningBuffer",
            "cameraManager"
        }
    .end annotation

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getTuningBufferSize(Lcom/android/camera2/CameraCapabilities;I)Lcom/android/camera/CameraSize;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera2/CameraConfigManager;->setTuningBufferSize(Lcom/android/camera/CameraSize;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSize: yuv tuning buffer size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "CameraSizeManager"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getTuningBufferSize(Lcom/android/camera2/CameraCapabilities;I)Lcom/android/camera/CameraSize;

    move-result-object p0

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/camera2/CameraConfigManager;->setRawSizeOfTuningBuffer(Lcom/android/camera/CameraSize;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateSize: raw tuning buffer size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getBufferFormat(IILcom/xiaomi/engine/GraphDescriptorBean;ZLcom/android/camera/CameraSize;)Lcom/xiaomi/engine/BufferFormat;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "modeIndex",
            "rawCallbackType",
            "gd",
            "upscaleImageWithSR",
            "pictureSize"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mAlgorithmOutputSize:Lcom/android/camera/CameraSize;

    if-eqz v0, :cond_0

    move-object p5, v0

    :cond_0
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v0

    invoke-virtual {v0}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0OOOO()Z

    move-result v0

    const/16 v1, 0x23

    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    new-instance p0, Lcom/xiaomi/engine/BufferFormat;

    iget p1, p5, Lcom/android/camera/CameraSize;->width:I

    iget p2, p5, Lcom/android/camera/CameraSize;->height:I

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/xiaomi/engine/BufferFormat;-><init>(IIILcom/xiaomi/engine/GraphDescriptorBean;)V

    goto/16 :goto_1

    :cond_1
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p4

    invoke-virtual {p4}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0oOoo00()Z

    move-result p4

    if-nez p4, :cond_2

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p4

    invoke-virtual {p4}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0OooOo()Z

    move-result p4

    if-eqz p4, :cond_3

    :cond_2
    const/16 p4, 0xa3

    if-ne p1, p4, :cond_3

    if-eqz p5, :cond_3

    new-instance p0, Lcom/xiaomi/engine/BufferFormat;

    iget p1, p5, Lcom/android/camera/CameraSize;->width:I

    iget p2, p5, Lcom/android/camera/CameraSize;->height:I

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/xiaomi/engine/BufferFormat;-><init>(IIILcom/xiaomi/engine/GraphDescriptorBean;)V

    goto/16 :goto_1

    :cond_3
    invoke-static {p2}, Lcom/android/camera/module/common/ModuleUtil;->isMTKRawSuperNightCallback(I)Z

    move-result p4

    const/16 v0, 0x20

    if-eqz p4, :cond_5

    iget-object p4, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSensorRawImageSize:Lcom/android/camera/CameraSize;

    if-eqz p4, :cond_5

    const/16 p2, 0xad

    if-ne p1, p2, :cond_4

    new-instance p1, Lcom/xiaomi/engine/BufferFormat;

    iget-object p0, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSensorRawImageSize:Lcom/android/camera/CameraSize;

    iget p2, p0, Lcom/android/camera/CameraSize;->width:I

    iget p0, p0, Lcom/android/camera/CameraSize;->height:I

    invoke-direct {p1, p2, p0, v0, p3}, Lcom/xiaomi/engine/BufferFormat;-><init>(IIILcom/xiaomi/engine/GraphDescriptorBean;)V

    goto :goto_0

    :cond_4
    new-instance p0, Lcom/xiaomi/engine/BufferFormat;

    iget p1, p5, Lcom/android/camera/CameraSize;->width:I

    iget p2, p5, Lcom/android/camera/CameraSize;->height:I

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/xiaomi/engine/BufferFormat;-><init>(IIILcom/xiaomi/engine/GraphDescriptorBean;)V

    goto :goto_1

    :cond_5
    and-int/lit8 p1, p2, 0x10

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSensorRawImageSize:Lcom/android/camera/CameraSize;

    if-eqz p1, :cond_7

    new-instance p1, Lcom/xiaomi/engine/BufferFormat;

    iget p2, p5, Lcom/android/camera/CameraSize;->width:I

    iget p4, p5, Lcom/android/camera/CameraSize;->height:I

    invoke-direct {p1, p2, p4, v0, p3}, Lcom/xiaomi/engine/BufferFormat;-><init>(IIILcom/xiaomi/engine/GraphDescriptorBean;)V

    invoke-virtual {p1, v1}, Lcom/xiaomi/engine/BufferFormat;->setBufferFormat(I)V

    const/4 p2, 0x0

    new-array p3, p2, [Ljava/lang/Object;

    const-string p4, "CameraSizeManager"

    const-string v0, "configParallelSession: override output format to YUV_420_888"

    invoke-static {p4, v0, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSensorRawImageSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p5, p3}, Lcom/android/camera/CameraSize;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSensorRawImageSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p0}, Lcom/android/camera/CameraSize;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, p2

    const/4 p0, 0x1

    invoke-virtual {p5}, Lcom/android/camera/CameraSize;->toString()Ljava/lang/String;

    move-result-object p5

    aput-object p5, v0, p0

    const-string p0, "configParallelSession: input size: %s, output size: %s"

    invoke-static {p3, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p4, p0, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    :goto_0
    move-object p0, p1

    goto :goto_1

    :cond_7
    new-instance p0, Lcom/xiaomi/engine/BufferFormat;

    iget p1, p5, Lcom/android/camera/CameraSize;->width:I

    iget p2, p5, Lcom/android/camera/CameraSize;->height:I

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/xiaomi/engine/BufferFormat;-><init>(IIILcom/xiaomi/engine/GraphDescriptorBean;)V

    :goto_1
    return-object p0
.end method

.method public getOutputSize(Lcom/android/camera/CameraSize;ZZLcom/android/camera/module/common/ModuleCameraManagerInterface;IZI)Lcom/android/camera/CameraSize;
    .locals 4
    .param p1    # Lcom/android/camera/CameraSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inputSize",
            "isMultiSurfaceSatMode",
            "heicPreferred",
            "moduleCameraManager",
            "moduleIndex",
            "isCupCaptureEnabled",
            "outputPictureFormat"
        }
    .end annotation

    invoke-interface {p4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v1

    const-string v2, "CameraSizeManager"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v1

    invoke-virtual {v1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0OOOO()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getAi108Running()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p1

    invoke-virtual {p1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->Oooo0O0()I

    move-result p1

    sget-object p2, Lcom/android/camera/module/image/ModuleSizeFormatManager;->AI_SR_SIZE_LIST:[Lcom/android/camera/CameraSize;

    aget-object p3, p2, p1

    aget-object p1, p2, p1

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mAlgorithmOutputSize:Lcom/android/camera/CameraSize;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateSize: UltraPixel algorithmOutputSize: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mAlgorithmOutputSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {v2, p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0o;->OooOOoo()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    move p2, v3

    :goto_0
    invoke-virtual {p0, p3, p4, p7}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->getSupportedOutputSizes(ZLcom/android/camera/module/common/ModuleCameraManagerInterface;I)Ljava/util/List;

    move-result-object p5

    invoke-static {p5, p1, p2}, Lcom/android/camera/PictureSizeManager;->getBestSquareSize(Ljava/util/List;IZ)Lcom/android/camera/CameraSize;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/CameraSize;->isEmpty()Z

    move-result p5

    const-string/jumbo p7, "x"

    if-eqz p5, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "updateSize: Could not find a proper squared Jpeg size, defaults to: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {v2, p2, p3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p2, Lcom/android/camera/CameraSize;

    invoke-direct {p2, p1, p1}, Lcom/android/camera/CameraSize;-><init>(II)V

    goto :goto_1

    :cond_2
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0o;->OooOOoo()Z

    move-result p5

    if-eqz p5, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {p2}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result p3

    if-le p3, p1, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "updateSize: force reset HEIF output size to: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {v2, p2, p3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p2, Lcom/android/camera/CameraSize;

    invoke-direct {p2, p1, p1}, Lcom/android/camera/CameraSize;-><init>(II)V

    :cond_3
    :goto_1
    move-object p3, p2

    goto/16 :goto_3

    :cond_4
    if-eqz p2, :cond_5

    new-instance p3, Lcom/android/camera/CameraSize;

    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result p1

    invoke-direct {p3, p2, p1}, Lcom/android/camera/CameraSize;-><init>(II)V

    goto/16 :goto_3

    :cond_5
    const/16 p1, 0xab

    if-ne p5, p1, :cond_7

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportOptimalBokehSize(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0, p3, p4, p7}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->getSupportedOutputSizes(ZLcom/android/camera/module/common/ModuleCameraManagerInterface;I)Ljava/util/List;

    move-result-object p1

    invoke-static {p5}, Lcom/android/camera/CameraSettings;->getPictureSizeRatioString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigManager;->isBokeh1X()Z

    move-result p3

    invoke-static {v0, p2, p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->getOptimalPictureBokehSize(Lcom/android/camera2/CameraCapabilities;Ljava/lang/String;Z)Landroid/util/Size;

    move-result-object p2

    if-eqz p2, :cond_6

    new-instance p1, Lcom/android/camera/CameraSize;

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-direct {p1, p3, p2}, Lcom/android/camera/CameraSize;-><init>(II)V

    goto :goto_2

    :cond_6
    invoke-static {p1, p5}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;I)Lcom/android/camera/CameraSize;

    move-result-object p1

    :goto_2
    move-object p3, p1

    goto :goto_3

    :cond_7
    invoke-static {p4}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->isLimitSize(Lcom/android/camera/module/common/ModuleCameraManagerInterface;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0, p3, p4, p7}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->getSupportedOutputSizes(ZLcom/android/camera/module/common/ModuleCameraManagerInterface;I)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p4, p5}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->getLimitSize(Ljava/util/List;Lcom/android/camera/module/common/ModuleCameraManagerInterface;I)Lcom/android/camera/CameraSize;

    move-result-object p3

    goto :goto_3

    :cond_8
    invoke-virtual {p0, p3, p4, p7}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->getSupportedOutputSizes(ZLcom/android/camera/module/common/ModuleCameraManagerInterface;I)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p5}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;I)Lcom/android/camera/CameraSize;

    move-result-object p3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getXXXMRunning()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportPixelModeCustomSize(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getPixelModeCustomSize(Lcom/android/camera2/CameraCapabilities;)Landroid/util/Size;

    move-result-object p1

    if-eqz p1, :cond_9

    new-instance p3, Lcom/android/camera/CameraSize;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-direct {p3, p2, p1}, Lcom/android/camera/CameraSize;-><init>(II)V

    :cond_9
    :goto_3
    if-eqz p6, :cond_a

    new-instance p1, Lcom/android/camera/CameraSize;

    invoke-interface {p4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/camera/CameraSize;-><init>(Lcom/android/camera/CameraSize;)V

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mAlgorithmOutputSize:Lcom/android/camera/CameraSize;

    iget-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mBinningPictureSize:Lcom/android/camera/CameraSize;

    if-eqz p1, :cond_a

    new-instance p2, Lcom/android/camera/CameraSize;

    invoke-direct {p2, p1}, Lcom/android/camera/CameraSize;-><init>(Lcom/android/camera/CameraSize;)V

    iput-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mAlgorithmOutputSize:Lcom/android/camera/CameraSize;

    :cond_a
    return-object p3
.end method

.method public getPictureSize(IILcom/android/camera/CameraSize;II)Lcom/android/camera/CameraSize;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cameraId",
            "imageFormat",
            "maxSize",
            "operationMode",
            "moduleIndex"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    const-string v0, "CameraSizeManager"

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    invoke-static {p0, p4}, Lcom/android/camera2/CameraCapabilitiesUtil;->setOperatingMode(Lcom/android/camera2/CameraCapabilities;I)V

    invoke-static {p0, p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object p0

    if-eqz p3, :cond_2

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    move p4, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p4, v2, :cond_1

    invoke-interface {p0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraSize;

    invoke-virtual {v2, p3}, Lcom/android/camera/CameraSize;->compareTo(Lcom/android/camera/CameraSize;)I

    move-result v3

    if-gtz v3, :cond_0

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    move-object p0, p2

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getPictureSize: matchSizes = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {v0, p2, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, p5}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;I)Lcom/android/camera/CameraSize;

    move-result-object p0

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getPictureSize: cameraId = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " size = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public getSatPictureSize(Lcom/android/camera/module/common/ModuleCameraManagerInterface;)Lcom/android/camera/CameraSize;
    .locals 6
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraManager"
        }
    .end annotation

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getSatMasterCameraId()I

    move-result p1

    const-string v0, "CameraSizeManager"

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v4, 0x3

    if-eq p1, v4, :cond_1

    const/4 v4, 0x4

    if-eq p1, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSatPictureSize: unexpected satMasterCameraId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mWidePictureSize:Lcom/android/camera/CameraSize;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mUltraTelePictureSize:Lcom/android/camera/CameraSize;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mTelePictureSize:Lcom/android/camera/CameraSize;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mWidePictureSize:Lcom/android/camera/CameraSize;

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mUltraWidePictureSize:Lcom/android/camera/CameraSize;

    :goto_0
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    aput-object p0, v1, v2

    const-string p1, "getSatPictureSize: activeCameraId = %d, size = %s"

    invoke-static {v4, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public getSatRawSize(Lcom/android/camera/module/common/ModuleCameraManagerInterface;)Lcom/android/camera/CameraSize;
    .locals 6
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraManager"
        }
    .end annotation

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getSatMasterCameraId()I

    move-result p1

    const-string v0, "CameraSizeManager"

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v4, 0x3

    if-eq p1, v4, :cond_1

    const/4 v4, 0x4

    if-eq p1, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSatRawSize: unexpected satMasterCameraId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mWidePictureSize:Lcom/android/camera/CameraSize;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mRawSizeOfUltraTele:Lcom/android/camera/CameraSize;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mRawSizeOfTele:Lcom/android/camera/CameraSize;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mRawSizeOfWide:Lcom/android/camera/CameraSize;

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mRawSizeOfUltraWide:Lcom/android/camera/CameraSize;

    :goto_0
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    aput-object p0, v1, v2

    const-string p1, "getSatRawSize: activeCameraId = %d, size = %s"

    invoke-static {v4, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public getSupportedOutputSizes(ZLcom/android/camera/module/common/ModuleCameraManagerInterface;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "heicPreferred",
            "moduleCameraManager",
            "format"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/android/camera/module/common/ModuleCameraManagerInterface;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;"
        }
    .end annotation

    invoke-interface {p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    invoke-static {p3}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->isHeicImageFormat(I)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0o;->OooOOoo()Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    const/16 p1, 0x23

    invoke-static {p0, p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->hasStandaloneHeicStreamConfigurations(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedHeicOutputStreamSizes(Lcom/android/camera2/CameraCapabilities;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {p0, p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/16 p1, 0x100

    invoke-static {p0, p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public setVideoSize(Lcom/android/camera/CameraSize;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVideoSize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "CameraSizeManager"

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mVideoSize:Lcom/android/camera/CameraSize;

    return-void
.end method

.method public updateBinningSize(Lcom/android/camera/CameraSize;FLcom/android/camera/module/common/ModuleCameraManagerInterface;)V
    .locals 3
    .param p1    # Lcom/android/camera/CameraSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pictureSize",
            "ratio",
            "moduleCameraManager"
        }
    .end annotation

    iget v0, p1, Lcom/android/camera/CameraSize;->width:I

    div-int/lit8 v0, v0, 0x2

    iget p1, p1, Lcom/android/camera/CameraSize;->height:I

    div-int/lit8 p1, p1, 0x2

    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    const/16 v2, 0x23

    invoke-static {v1, v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputStreamSizes(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object v1

    mul-int v2, v0, p1

    invoke-static {v1, p2, v2}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;FI)Lcom/android/camera/CameraSize;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mBinningPictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p2}, Lcom/android/camera/CameraSize;->isEmpty()Z

    move-result p2

    const/4 v1, 0x0

    const-string v2, "CameraSizeManager"

    if-eqz p2, :cond_0

    new-instance p2, Lcom/android/camera/CameraSize;

    invoke-direct {p2, v0, p1}, Lcom/android/camera/CameraSize;-><init>(II)V

    iput-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mBinningPictureSize:Lcom/android/camera/CameraSize;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "don\'t support mBinningPictureSize:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mBinningPictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", please config!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->alwaysUseRemosaicSize()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    new-instance p1, Lcom/android/camera/CameraSize;

    iget-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mBinningPictureSize:Lcom/android/camera/CameraSize;

    invoke-direct {p1, p2}, Lcom/android/camera/CameraSize;-><init>(Lcom/android/camera/CameraSize;)V

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mAlgorithmOutputSize:Lcom/android/camera/CameraSize;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateSize: binning algorithmOutputSize: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mAlgorithmOutputSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateSize: binning size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mBinningPictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public updateMultiSurfaceSatPicSize(IZILcom/android/camera/module/common/ModuleCameraManagerInterface;I)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageFormat",
            "requireRaw",
            "moduleIndex",
            "cameraManager",
            "operatingMode"
        }
    .end annotation

    move-object v6, p0

    move/from16 v7, p3

    move-object/from16 v8, p4

    invoke-interface/range {p4 .. p4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getSATSubCameraIds()[I

    move-result-object v9

    if-nez v9, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSize: [SAT]camera list: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x0

    new-array v1, v10, [Ljava/lang/Object;

    const-string v11, "CameraSizeManager"

    invoke-static {v11, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    array-length v12, v9

    move v13, v10

    move v14, v13

    :goto_0
    if-ge v13, v12, :cond_6

    aget v0, v9, v13

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual/range {p0 .. p5}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->updateSatUltraWideSize(IZILcom/android/camera/module/common/ModuleCameraManagerInterface;I)Z

    move-result v0

    :goto_1
    or-int/2addr v14, v0

    goto/16 :goto_2

    :cond_1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v1

    if-ne v0, v1, :cond_2

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->updateSatWideSize(IZIILcom/android/camera/module/common/ModuleCameraManagerInterface;)Z

    move-result v0

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v1

    if-ne v0, v1, :cond_3

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->updateSatTeleSize(IZIILcom/android/camera/module/common/ModuleCameraManagerInterface;)Z

    move-result v0

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result v1

    if-ne v0, v1, :cond_4

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->updateSatUltraTeleSize(IZIILcom/android/camera/module/common/ModuleCameraManagerInterface;)Z

    move-result v0

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getStandaloneMacroCameraId()I

    move-result v1

    if-ne v0, v1, :cond_5

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->updateSatMacroSize(IZIILcom/android/camera/module/common/ModuleCameraManagerInterface;)V

    :cond_5
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_6
    if-nez v14, :cond_7

    invoke-virtual {p0, v7, v8}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->updateSatFakeTeleSize(ILcom/android/camera/module/common/ModuleCameraManagerInterface;)V

    :cond_7
    invoke-virtual {p0, v8}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->getSatPictureSize(Lcom/android/camera/module/common/ModuleCameraManagerInterface;)Lcom/android/camera/CameraSize;

    move-result-object v0

    invoke-interface {v8, v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setPictureSize(Lcom/android/camera/CameraSize;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSize: [SAT]picture size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p4 .. p4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v11, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_8

    invoke-virtual {p0, v8}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->getSatRawSize(Lcom/android/camera/module/common/ModuleCameraManagerInterface;)Lcom/android/camera/CameraSize;

    move-result-object v0

    iput-object v0, v6, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSensorRawImageSize:Lcom/android/camera/CameraSize;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSize: [SAT]raw size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSensorRawImageSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v11, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    sget-boolean v0, LOooO0OO/OooO0oO/OooO00o/OooO0o;->OooOo00:Z

    if-nez v0, :cond_9

    sget-boolean v0, LOooO0OO/OooO0oO/OooO00o/OooO0o;->OooOo0:Z

    if-eqz v0, :cond_a

    :cond_9
    invoke-interface/range {p4 .. p4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-interface/range {p4 .. p4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getSatMasterCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    iget v1, v6, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mOutputPictureFormat:I

    invoke-static {v0, v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-interface/range {p4 .. p4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {v0, v7}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;I)Lcom/android/camera/CameraSize;

    move-result-object v0

    invoke-interface {v8, v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setPictureSize(Lcom/android/camera/CameraSize;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSize: [SAT]Could not match a proper Jpeg size in supportedPictureSizes, update by SAT size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p4 .. p4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v11, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    return-void
.end method

.method public updateNormalSurfacePicSize(IZLcom/android/camera/module/common/ModuleCameraManagerInterface;IZIZZZ)V
    .locals 3
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
            0x0
        }
        names = {
            "rawCallbackType",
            "requireRaw",
            "cameraManager",
            "moduleIndex",
            "parallelSession",
            "operatingMode",
            "cupCaptureEnabled",
            "heicPreferred",
            "inQCFAMode"
        }
    .end annotation

    invoke-static {p5}, Lcom/android/camera/module/image/ImageModuleUtil;->getImageFormat(Z)I

    move-result v0

    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3, p4, p7}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->updateSensorRawImageSize(Lcom/android/camera/module/common/ModuleCameraManagerInterface;IZ)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const/16 p1, 0x20

    invoke-static {v1, p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p4, p3}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;ILcom/android/camera/module/common/ModuleCameraManagerInterface;)Lcom/android/camera/CameraSize;

    move-result-object p1

    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/camera2/CameraConfigManager;->setSensorRawImageSize(Lcom/android/camera/CameraSize;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p7, "updateSize: raw buffer size: "

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    const-string p7, "CameraSizeManager"

    invoke-static {p7, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    const/16 p1, 0xab

    if-eqz p5, :cond_2

    if-ne p4, p1, :cond_2

    invoke-virtual {p0, v0, p4, p3, p6}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->updatePortraitPictureSize(IILcom/android/camera/module/common/ModuleCameraManagerInterface;I)V

    goto/16 :goto_3

    :cond_2
    invoke-static {v1, v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object p2

    invoke-static {p2, p4, p3}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;ILcom/android/camera/module/common/ModuleCameraManagerInterface;)Lcom/android/camera/CameraSize;

    move-result-object p6

    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result p7

    if-eqz p7, :cond_3

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportPixelModeCustomSize(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p7

    if-eqz p7, :cond_3

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getPixelModeCustomSize(Lcom/android/camera2/CameraCapabilities;)Landroid/util/Size;

    move-result-object p7

    if-eqz p7, :cond_3

    new-instance p6, Lcom/android/camera/CameraSize;

    invoke-virtual {p7}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p7}, Landroid/util/Size;->getHeight()I

    move-result p7

    invoke-direct {p6, v0, p7}, Lcom/android/camera/CameraSize;-><init>(II)V

    :cond_3
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p7

    invoke-virtual {p7}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00oOo0o()Z

    move-result p7

    if-eqz p7, :cond_5

    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result p7

    if-eqz p7, :cond_5

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0o;->OooOOoo()Z

    move-result p7

    if-eqz p7, :cond_4

    if-nez p8, :cond_5

    :cond_4
    new-instance p7, Lcom/android/camera/CameraSize;

    iget p8, p6, Lcom/android/camera/CameraSize;->width:I

    div-int/lit8 p8, p8, 0x2

    iget p6, p6, Lcom/android/camera/CameraSize;->height:I

    div-int/lit8 p6, p6, 0x2

    invoke-direct {p7, p8, p6}, Lcom/android/camera/CameraSize;-><init>(II)V

    move-object p6, p7

    :cond_5
    if-eqz p5, :cond_6

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportedQcfa(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p7

    if-nez p7, :cond_6

    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result p7

    if-eqz p7, :cond_6

    new-instance p7, Lcom/android/camera/CameraSize;

    iget p8, p6, Lcom/android/camera/CameraSize;->width:I

    div-int/lit8 p8, p8, 0x2

    iget p6, p6, Lcom/android/camera/CameraSize;->height:I

    div-int/lit8 p6, p6, 0x2

    invoke-direct {p7, p8, p6}, Lcom/android/camera/CameraSize;-><init>(II)V

    move-object p6, p7

    :cond_6
    invoke-static {p3}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->isLimitSize(Lcom/android/camera/module/common/ModuleCameraManagerInterface;)Z

    move-result p7

    if-eqz p7, :cond_7

    invoke-static {p2, p3, p4}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->getLimitSize(Ljava/util/List;Lcom/android/camera/module/common/ModuleCameraManagerInterface;I)Lcom/android/camera/CameraSize;

    move-result-object p6

    :cond_7
    const/16 p7, 0xad

    if-ne p4, p7, :cond_9

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportSuperNightLimitSize(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p7

    if-eqz p7, :cond_8

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSuperNightLimitSize(Lcom/android/camera2/CameraCapabilities;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2, p4}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;I)Lcom/android/camera/CameraSize;

    move-result-object p6

    goto :goto_1

    :cond_8
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p7

    invoke-virtual {p7}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000O0o0()I

    move-result p7

    if-eqz p7, :cond_9

    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getBogusCameraId()I

    move-result p6

    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p8

    invoke-static {p2, p7, p4, p6, p8}, Lcom/android/camera/PictureSizeManager;->initializeLimitWidth(Ljava/util/List;IIILcom/android/camera2/CameraCapabilities;)V

    invoke-static {p4}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(I)Lcom/android/camera/CameraSize;

    move-result-object p6

    :cond_9
    :goto_1
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p2

    invoke-virtual {p2}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00ooOO0()Z

    move-result p2

    if-eqz p2, :cond_c

    const-class p2, Landroid/graphics/SurfaceTexture;

    invoke-static {v1, p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p2

    iget p7, p6, Lcom/android/camera/CameraSize;->width:I

    iget p6, p6, Lcom/android/camera/CameraSize;->height:I

    invoke-static {p7, p6, v1}, Lcom/android/camera/CameraSettings;->getPreviewAspectRatio(IILcom/android/camera2/CameraCapabilities;)F

    move-result p6

    float-to-double p6, p6

    double-to-float p8, p6

    invoke-static {v1, p8}, Lcom/android/camera2/CameraCapabilitiesUtil;->getBokehPreviewSize(Lcom/android/camera2/CameraCapabilities;F)Lcom/android/camera/CameraSize;

    move-result-object p8

    if-ne p4, p1, :cond_a

    if-nez p8, :cond_b

    :cond_a
    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getBogusCameraId()I

    move-result p1

    invoke-static {v2, p1, p2, p6, p7}, Lcom/android/camera/Util;->getOptimalPreviewSize(ZILjava/util/List;D)Lcom/android/camera/CameraSize;

    move-result-object p8

    :cond_b
    invoke-interface {p3, p8}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setPictureSize(Lcom/android/camera/CameraSize;)V

    goto :goto_2

    :cond_c
    invoke-interface {p3, p6}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setPictureSize(Lcom/android/camera/CameraSize;)V

    :goto_2
    invoke-static {p3, p5, p9}, Lcom/android/camera/module/image/ImageModuleUtil;->isEnableQcfaForAlgoUp(Lcom/android/camera/module/common/ModuleCameraManagerInterface;ZZ)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-static {p4}, Lcom/android/camera/CameraSettings;->getPictureSizeRatioString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/Util;->getRatio(Ljava/lang/String;)F

    move-result p1

    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object p2

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->updateBinningSize(Lcom/android/camera/CameraSize;FLcom/android/camera/module/common/ModuleCameraManagerInterface;)V

    :cond_d
    :goto_3
    return-void
.end method

.method public updateOutputSize(Lcom/android/camera/CameraSize;ILcom/android/camera/module/common/ModuleCameraManagerInterface;IZ)V
    .locals 5
    .param p1    # Lcom/android/camera/CameraSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inputSize",
            "satCameraId",
            "cameraManager",
            "moduleIndex",
            "isSupportBackUWUpcale"
        }
    .end annotation

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string/jumbo v3, "updateOutputSize: E. satCameraId = %d, size = %s"

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "CameraSizeManager"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0o;->OooOOoo()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-eq v0, p2, :cond_0

    invoke-static {p2}, Lcom/xiaomi/camera/base/CameraIdUtil;->mapSatMasterIdToCameraId(I)I

    move-result p2

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera2/Camera2Proxy;->getSatMasterCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_1

    const/16 p1, 0x100

    invoke-static {p2, p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p4}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;I)Lcom/android/camera/CameraSize;

    move-result-object p1

    :cond_1
    if-eqz p5, :cond_2

    new-instance p2, Lcom/android/camera/CameraSize;

    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result p3

    mul-int/2addr p3, v1

    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result p1

    mul-int/2addr p1, v1

    invoke-direct {p2, p3, p1}, Lcom/android/camera/CameraSize;-><init>(II)V

    iput-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mOutputPictureSize:Lcom/android/camera/CameraSize;

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result p2

    if-eqz p2, :cond_3

    iget p2, p1, Lcom/android/camera/CameraSize;->width:I

    iget p1, p1, Lcom/android/camera/CameraSize;->height:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    new-instance p2, Lcom/android/camera/CameraSize;

    invoke-direct {p2, p1, p1}, Lcom/android/camera/CameraSize;-><init>(II)V

    iput-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mOutputPictureSize:Lcom/android/camera/CameraSize;

    goto :goto_1

    :cond_3
    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mOutputPictureSize:Lcom/android/camera/CameraSize;

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateOutputSize: X. size = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mOutputPictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public updateParallelSessionPicSize(ZZLcom/android/camera/module/common/ModuleCameraManagerInterface;IZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "heicPreferred",
            "isMultiSurfaceSatMode",
            "cameraManager",
            "moduleIndex",
            "parallelSession",
            "cupCaptureEnabled"
        }
    .end annotation

    if-eqz p5, :cond_3

    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    iget v7, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mOutputPictureFormat:I

    move-object v0, p0

    move v2, p2

    move v3, p1

    move-object v4, p3

    move v5, p4

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->getOutputSize(Lcom/android/camera/CameraSize;ZZLcom/android/camera/module/common/ModuleCameraManagerInterface;IZI)Lcom/android/camera/CameraSize;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mOutputPictureSize:Lcom/android/camera/CameraSize;

    sget-boolean p2, LOooO0OO/OooO0oO/OooO00o/OooO0o;->OooOo00:Z

    const-string p4, "CameraSizeManager"

    const/4 p5, 0x0

    if-nez p2, :cond_0

    sget-boolean p2, LOooO0OO/OooO0oO/OooO00o/OooO0o;->OooOo0:Z

    if-eqz p2, :cond_1

    :cond_0
    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object p2

    iget-object p6, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mOutputPictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p2, p6}, Lcom/android/camera/CameraSize;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result p2

    if-nez p2, :cond_1

    iget p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mOutputPictureFormat:I

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->getSupportedOutputSizes(ZLcom/android/camera/module/common/ModuleCameraManagerInterface;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mOutputPictureSize:Lcom/android/camera/CameraSize;

    invoke-interface {p3, p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setPictureSize(Lcom/android/camera/CameraSize;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateSize: Could not match a proper Jpeg size with YUV size, update to Jpeg size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, p5, [Ljava/lang/Object;

    invoke-static {p4, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    iget p3, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mOutputPictureFormat:I

    invoke-static {p3}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->isHeicImageFormat(I)Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, "HEIC"

    goto :goto_0

    :cond_2
    const-string p3, "JPEG"

    :goto_0
    aput-object p3, p2, p5

    const/4 p3, 0x1

    iget-object p0, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mOutputPictureSize:Lcom/android/camera/CameraSize;

    aput-object p0, p2, p3

    const-string/jumbo p0, "updateSize: algoUp output size (%s): %s"

    invoke-static {p1, p0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array p1, p5, [Ljava/lang/Object;

    invoke-static {p4, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public updatePortraitOptimalSize(ILcom/android/camera/module/common/ModuleCameraManagerInterface;)Z
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "moduleIndex",
            "moduleCameraManager"
        }
    .end annotation

    invoke-interface {p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    const-string v1, "CameraSizeManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigManager;->isBokeh1X()Z

    move-result v3

    const-string v4, ", subYuvSize = "

    const-string v5, ", subRawSize = "

    const-string v6, ", slaveId = "

    const/16 v7, 0x23

    const/4 v8, -0x1

    const/4 v9, 0x1

    if-eqz v3, :cond_2

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportBokehRole(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getOptimalMasterBokeh1XId(Lcom/android/camera2/CameraCapabilities;)I

    move-result v3

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getOptimalSlaveBokeh1XId(Lcom/android/camera2/CameraCapabilities;)I

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updatePortraitOptimalSize1x: masterId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v11, v2, [Ljava/lang/Object;

    invoke-static {v1, v6, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-le v3, v8, :cond_5

    if-le v10, v8, :cond_5

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->getPictureSizeRatioString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v7}, Lcom/android/camera2/CameraCapabilitiesUtil;->getOptimalMasterBokeh1XSize(Lcom/android/camera2/CameraCapabilities;Ljava/lang/String;I)Landroid/util/Size;

    move-result-object v3

    invoke-static {v0, p1, v7}, Lcom/android/camera2/CameraCapabilitiesUtil;->getOptimalSlaveBokeh1XSize(Lcom/android/camera2/CameraCapabilities;Ljava/lang/String;I)Landroid/util/Size;

    move-result-object v6

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMiviBokehSuperNightSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {p0, v0, p1, v9}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->updatePortraitRawSize(Lcom/android/camera2/CameraCapabilities;Ljava/lang/String;Z)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updatePortraitOptimalSize1x: mainRawSize = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mBokehMainRawSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mBokehSubRawSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move p1, v9

    :goto_0
    if-eqz v3, :cond_1

    if-eqz v6, :cond_1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/android/camera/CameraSize;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {p1, v0, v3}, Lcom/android/camera/CameraSize;-><init>(II)V

    invoke-interface {p2, p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setPictureSize(Lcom/android/camera/CameraSize;)V

    new-instance p1, Lcom/android/camera/CameraSize;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {p1, v0, v3}, Lcom/android/camera/CameraSize;-><init>(II)V

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSubPictureSize:Lcom/android/camera/CameraSize;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updatePortraitOptimalSize1x: mainYuvSize = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSubPictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v9

    :cond_1
    new-array p0, v2, [Ljava/lang/Object;

    const-string/jumbo p1, "updatePortraitOptimalSize1x: could not get master or slave capabilities"

    invoke-static {v1, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_2
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getOptimalMasterBokehId(Lcom/android/camera2/CameraCapabilities;)I

    move-result v3

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getOptimalSlaveBokehId(Lcom/android/camera2/CameraCapabilities;)I

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updatePortraitOptimalSize: masterId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v11, v2, [Ljava/lang/Object;

    invoke-static {v1, v6, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-le v3, v8, :cond_5

    if-le v10, v8, :cond_5

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->getPictureSizeRatioString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v7}, Lcom/android/camera2/CameraCapabilitiesUtil;->getOptimalMasterBokehSize(Lcom/android/camera2/CameraCapabilities;Ljava/lang/String;I)Landroid/util/Size;

    move-result-object v3

    invoke-static {v0, p1, v7}, Lcom/android/camera2/CameraCapabilitiesUtil;->getOptimalSlaveBokehSize(Lcom/android/camera2/CameraCapabilities;Ljava/lang/String;I)Landroid/util/Size;

    move-result-object v6

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMiviBokehSuperNightSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-direct {p0, v0, p1, v2}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->updatePortraitRawSize(Lcom/android/camera2/CameraCapabilities;Ljava/lang/String;Z)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updatePortraitOptimalSize: mainRawSize = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mBokehMainRawSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mBokehSubRawSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    move p1, v9

    :goto_1
    if-eqz v3, :cond_4

    if-eqz v6, :cond_4

    if-eqz p1, :cond_4

    new-instance p1, Lcom/android/camera/CameraSize;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {p1, v0, v3}, Lcom/android/camera/CameraSize;-><init>(II)V

    invoke-interface {p2, p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setPictureSize(Lcom/android/camera/CameraSize;)V

    new-instance p1, Lcom/android/camera/CameraSize;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {p1, v0, v3}, Lcom/android/camera/CameraSize;-><init>(II)V

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSubPictureSize:Lcom/android/camera/CameraSize;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updatePortraitOptimalSize: mainYuvSize = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSubPictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v9

    :cond_4
    new-array p0, v2, [Ljava/lang/Object;

    const-string/jumbo p1, "updatePortraitOptimalSize: could not get master or slave capabilities"

    invoke-static {v1, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_5
    new-array p0, v2, [Ljava/lang/Object;

    const-string/jumbo p1, "updatePortraitOptimalSize: could not get logical capabilities"

    invoke-static {v1, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method public updatePortraitPictureSize(IILcom/android/camera/module/common/ModuleCameraManagerInterface;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageFormat",
            "moduleIndex",
            "moduleCameraManager",
            "operationMode"
        }
    .end annotation

    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportOptimalBokehSize(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->updatePortraitOptimalSize(ILcom/android/camera/module/common/ModuleCameraManagerInterface;)Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->updatePortraitSizeLegacy(ILcom/android/camera/module/common/ModuleCameraManagerInterface;II)V

    :cond_1
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getBokeBufferSize(Lcom/android/camera2/CameraCapabilities;)Lcom/android/camera/CameraSize;

    move-result-object p1

    sget-object p2, Lcom/android/camera/Util;->mDepthBokeBufferSizeScale:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p4, 0x1

    const/4 v0, 0x2

    if-nez p1, :cond_3

    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getDualBokehVendorId(Lcom/android/camera2/CameraCapabilities;)I

    move-result p1

    if-ne p1, p4, :cond_2

    new-instance p1, Lcom/android/camera/CameraSize;

    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    iget v1, v1, Lcom/android/camera/CameraSize;->width:I

    div-int/2addr v1, v0

    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v3

    iget v3, v3, Lcom/android/camera/CameraSize;->height:I

    div-int/2addr v3, v0

    invoke-direct {p1, v1, v3}, Lcom/android/camera/CameraSize;-><init>(II)V

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/android/camera/CameraSize;

    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    iget v1, v1, Lcom/android/camera/CameraSize;->width:I

    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v3

    iget v3, v3, Lcom/android/camera/CameraSize;->height:I

    invoke-direct {p1, v1, v3}, Lcom/android/camera/CameraSize;-><init>(II)V

    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mBokehDepthSize:Lcom/android/camera/CameraSize;

    iget v1, p1, Lcom/android/camera/CameraSize;->width:I

    mul-int/2addr v1, p2

    iput v1, p1, Lcom/android/camera/CameraSize;->width:I

    iget v1, p1, Lcom/android/camera/CameraSize;->height:I

    mul-int/2addr v1, p2

    iput v1, p1, Lcom/android/camera/CameraSize;->height:I

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object p2

    aput-object p2, v1, p4

    iget-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSubPictureSize:Lcom/android/camera/CameraSize;

    aput-object p2, v1, v0

    const/4 p2, 0x3

    iget-object p0, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mBokehDepthSize:Lcom/android/camera/CameraSize;

    aput-object p0, v1, p2

    const-string/jumbo p0, "scale = %s mainSize = %s subSize = %s depthSize = %s"

    invoke-static {p1, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "CameraSizeManager"

    invoke-static {p2, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public updatePortraitSizeLegacy(ILcom/android/camera/module/common/ModuleCameraManagerInterface;II)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageFormat",
            "moduleCameraManager",
            "operationMode",
            "moduleIndex"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    invoke-interface/range {p2 .. p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_1

    invoke-interface/range {p2 .. p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isDualFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxFrontCameraId()I

    move-result v0

    move v11, v0

    move v12, v9

    const/4 v10, 0x1

    goto :goto_1

    :cond_0
    move v11, v1

    move v10, v9

    move v12, v10

    goto :goto_1

    :cond_1
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v0

    invoke-virtual {v0}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000ooo()Z

    move-result v0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    const-string/jumbo v3, "pref_ultra_wide_bokeh_enabled"

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v3

    :goto_0
    move v10, v0

    move v12, v2

    move v11, v3

    goto :goto_1

    :cond_2
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v3

    invoke-virtual {v3}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00o0O00()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-boolean v3, LOooO0OO/OooO0oO/OooO00o/OooO0o;->Oooo0O0:Z

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getBokehDepthCameraId()I

    move-result v3

    goto :goto_0

    :cond_3
    invoke-interface/range {p2 .. p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/Camera2Proxy;->getBokehAuxCameraId()I

    move-result v3

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v3

    goto :goto_0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSize: isBigSmall = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isUW = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v9, [Ljava/lang/Object;

    const-string v13, "CameraSizeManager"

    invoke-static {v13, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface/range {p2 .. p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    move/from16 v2, p1

    invoke-static {v0, v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object v0

    invoke-interface/range {p2 .. p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v3

    invoke-virtual {v3}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->Oooo0OO()I

    move-result v3

    goto :goto_2

    :cond_5
    move v3, v9

    :goto_2
    invoke-interface/range {p2 .. p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getBogusCameraId()I

    move-result v4

    invoke-interface/range {p2 .. p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v5

    move/from16 v14, p4

    invoke-static {v0, v3, v14, v4, v5}, Lcom/android/camera/PictureSizeManager;->initializeLimitWidth(Ljava/util/List;IIILcom/android/camera2/CameraCapabilities;)V

    invoke-static/range {p4 .. p4}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(I)Lcom/android/camera/CameraSize;

    move-result-object v0

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v3

    invoke-virtual {v3}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00oOo0o()Z

    move-result v3

    const/4 v15, 0x2

    if-eqz v3, :cond_6

    invoke-interface/range {p2 .. p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Lcom/android/camera/CameraSize;

    iget v4, v0, Lcom/android/camera/CameraSize;->width:I

    div-int/2addr v4, v15

    iget v0, v0, Lcom/android/camera/CameraSize;->height:I

    div-int/2addr v0, v15

    invoke-direct {v3, v4, v0}, Lcom/android/camera/CameraSize;-><init>(II)V

    move-object v5, v3

    goto :goto_3

    :cond_6
    move-object v5, v0

    :goto_3
    const/4 v0, 0x0

    if-ne v1, v11, :cond_7

    invoke-interface {v7, v5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setPictureSize(Lcom/android/camera/CameraSize;)V

    iput-object v0, v6, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSubPictureSize:Lcom/android/camera/CameraSize;

    goto/16 :goto_7

    :cond_7
    if-eqz v10, :cond_8

    move-object v0, v5

    :cond_8
    invoke-interface/range {p2 .. p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v1

    invoke-virtual {v1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->Oooo0o0()I

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v0

    invoke-virtual {v0}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->Oooo0o0()I

    move-result v0

    invoke-static/range {p4 .. p4}, Lcom/android/camera/CameraSettings;->getPictureSizeRatioString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Util;->getRatio(Ljava/lang/String;)F

    move-result v1

    int-to-float v3, v0

    div-float/2addr v3, v1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v1, v3

    new-instance v3, Lcom/android/camera/CameraSize;

    rem-int/lit8 v4, v1, 0x2

    if-nez v4, :cond_9

    goto :goto_4

    :cond_9
    add-int/lit8 v1, v1, 0x1

    :goto_4
    invoke-direct {v3, v0, v1}, Lcom/android/camera/CameraSize;-><init>(II)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSize: maxPhysicSize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v13, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_a
    move-object v3, v0

    :goto_5
    move-object/from16 v0, p0

    move v1, v11

    move/from16 v2, p1

    move/from16 v4, p3

    move-object v8, v5

    move/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->getPictureSize(IILcom/android/camera/CameraSize;II)Lcom/android/camera/CameraSize;

    move-result-object v0

    if-nez v12, :cond_d

    if-eqz v10, :cond_b

    goto :goto_6

    :cond_b
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v1

    if-ne v11, v1, :cond_c

    invoke-interface {v7, v8}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setPictureSize(Lcom/android/camera/CameraSize;)V

    iput-object v0, v6, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSubPictureSize:Lcom/android/camera/CameraSize;

    goto :goto_7

    :cond_c
    invoke-interface {v7, v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setPictureSize(Lcom/android/camera/CameraSize;)V

    iput-object v8, v6, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSubPictureSize:Lcom/android/camera/CameraSize;

    goto :goto_7

    :cond_d
    :goto_6
    invoke-interface {v7, v8}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setPictureSize(Lcom/android/camera/CameraSize;)V

    iput-object v0, v6, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSubPictureSize:Lcom/android/camera/CameraSize;

    :goto_7
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v15, [Ljava/lang/Object;

    invoke-interface/range {p2 .. p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    aput-object v2, v1, v9

    iget-object v2, v6, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSubPictureSize:Lcom/android/camera/CameraSize;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string/jumbo v2, "updateSize: mainSize = %s subSize = %s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v13, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public updateSatFakeTeleSize(ILcom/android/camera/module/common/ModuleCameraManagerInterface;)V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isFakeSatV1Supported"
        type = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "moduleIndex",
            "moduleCameraManager"
        }
    .end annotation

    invoke-interface {p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isFakeSatV1Supported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedFakeSatYuvSizes(Lcom/android/camera2/CameraCapabilities;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;ILcom/android/camera/module/common/ModuleCameraManagerInterface;)Lcom/android/camera/CameraSize;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatWidePictureSize:Lcom/android/camera/CameraSize;

    invoke-interface {p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatWidePictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v1, v2}, Lcom/android/camera2/CameraConfigManager;->setFakeSatWidePictureSize(Lcom/android/camera/CameraSize;)V

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedFakeSatJpegSizes(Lcom/android/camera2/CameraCapabilities;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;ILcom/android/camera/module/common/ModuleCameraManagerInterface;)Lcom/android/camera/CameraSize;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatWideOutputSize:Lcom/android/camera/CameraSize;

    invoke-interface {p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatWideOutputSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p2}, Lcom/android/camera2/CameraConfigManager;->setFakeSatWideOutputSize(Lcom/android/camera/CameraSize;)V

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatWidePictureSize:Lcom/android/camera/CameraSize;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatWideOutputSize:Lcom/android/camera/CameraSize;

    aput-object p0, p2, v0

    const-string/jumbo p0, "updateSize: [SAT]fake wide size: %s -> %s"

    invoke-static {p1, p0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "CameraSizeManager"

    invoke-static {p2, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public updateSatMacroSize(IZIILcom/android/camera/module/common/ModuleCameraManagerInterface;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageFormat",
            "requireRaw",
            "operationMode",
            "moduleIndex",
            "moduleCameraManager"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getStandaloneMacroCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->setOperatingMode(Lcom/android/camera2/CameraCapabilities;I)V

    invoke-static {v0, p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p4, p5}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;ILcom/android/camera/module/common/ModuleCameraManagerInterface;)Lcom/android/camera/CameraSize;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mMacroPictureSize:Lcom/android/camera/CameraSize;

    invoke-interface {p5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p1

    iget-object p3, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mMacroPictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p3}, Lcom/android/camera2/CameraConfigManager;->setMacroPictureSize(Lcom/android/camera/CameraSize;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "updateSize: [SAT]macro picture size: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mMacroPictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    new-array v1, p3, [Ljava/lang/Object;

    const-string v2, "CameraSizeManager"

    invoke-static {v2, p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    const/16 p1, 0x20

    invoke-static {v0, p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p4}, Lcom/android/camera/PictureSizeManager;->getBestRawPictureSize(Ljava/util/List;I)Lcom/android/camera/CameraSize;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mRawSizeOfMacro:Lcom/android/camera/CameraSize;

    invoke-interface {p5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mRawSizeOfMacro:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p2}, Lcom/android/camera2/CameraConfigManager;->setRawSizeOfMacro(Lcom/android/camera/CameraSize;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateSize: [SAT]macro raw size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mRawSizeOfMacro:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, p3, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public updateSatTeleSize(IZIILcom/android/camera/module/common/ModuleCameraManagerInterface;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageFormat",
            "requireRaw",
            "operationMode",
            "moduleIndex",
            "moduleCameraManager"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getTeleCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0, p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->setOperatingMode(Lcom/android/camera2/CameraCapabilities;I)V

    invoke-static {v0, p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p4, p5}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;ILcom/android/camera/module/common/ModuleCameraManagerInterface;)Lcom/android/camera/CameraSize;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mTelePictureSize:Lcom/android/camera/CameraSize;

    invoke-interface {p5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p1

    iget-object p3, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mTelePictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p3}, Lcom/android/camera2/CameraConfigManager;->setTelePictureSize(Lcom/android/camera/CameraSize;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "updateSize: [SAT]tele picture size: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mTelePictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p3, v2, [Ljava/lang/Object;

    const-string v3, "CameraSizeManager"

    invoke-static {v3, p1, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    const/16 p1, 0x20

    invoke-static {v0, p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p4}, Lcom/android/camera/PictureSizeManager;->getBestRawPictureSize(Ljava/util/List;I)Lcom/android/camera/CameraSize;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mRawSizeOfTele:Lcom/android/camera/CameraSize;

    invoke-interface {p5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mRawSizeOfTele:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p2}, Lcom/android/camera2/CameraConfigManager;->setRawSizeOfTele(Lcom/android/camera/CameraSize;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateSize: [SAT]tele raw size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mRawSizeOfTele:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v3, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isFakeSatV2Supported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedFakeSatYuvSizes(Lcom/android/camera2/CameraCapabilities;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p4, p5}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;ILcom/android/camera/module/common/ModuleCameraManagerInterface;)Lcom/android/camera/CameraSize;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatTelePictureSize:Lcom/android/camera/CameraSize;

    invoke-interface {p5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatTelePictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p2}, Lcom/android/camera2/CameraConfigManager;->setFakeSatTelePictureSize(Lcom/android/camera/CameraSize;)V

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedFakeSatJpegSizes(Lcom/android/camera2/CameraCapabilities;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p4, p5}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;ILcom/android/camera/module/common/ModuleCameraManagerInterface;)Lcom/android/camera/CameraSize;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatTeleOutputSize:Lcom/android/camera/CameraSize;

    invoke-interface {p5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatTeleOutputSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p2}, Lcom/android/camera2/CameraConfigManager;->setFakeSatTeleOutputSize(Lcom/android/camera/CameraSize;)V

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    iget-object p3, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatTelePictureSize:Lcom/android/camera/CameraSize;

    aput-object p3, p2, v2

    iget-object p0, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatTeleOutputSize:Lcom/android/camera/CameraSize;

    aput-object p0, p2, v1

    const-string/jumbo p0, "updateSize: [SAT]tele fake size: %s -> %s"

    invoke-static {p1, p0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method public updateSatUltraTeleSize(IZIILcom/android/camera/module/common/ModuleCameraManagerInterface;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageFormat",
            "requireRaw",
            "operationMode",
            "moduleIndex",
            "moduleCameraManager"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-static {v0, p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->setOperatingMode(Lcom/android/camera2/CameraCapabilities;I)V

    invoke-static {v0, p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object p1

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p3

    invoke-virtual {p3}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0O0OoOo()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p3

    invoke-virtual {p3}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000Oo()I

    move-result p3

    invoke-interface {p5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getBogusCameraId()I

    move-result v3

    invoke-interface {p5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v4

    invoke-static {p1, p3, p4, v3, v4}, Lcom/android/camera/PictureSizeManager;->initializeLimitWidth(Ljava/util/List;IIILcom/android/camera2/CameraCapabilities;)V

    invoke-static {p4}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(I)Lcom/android/camera/CameraSize;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mUltraTelePictureSize:Lcom/android/camera/CameraSize;

    goto :goto_0

    :cond_0
    invoke-static {p1, p4, p5}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;ILcom/android/camera/module/common/ModuleCameraManagerInterface;)Lcom/android/camera/CameraSize;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mUltraTelePictureSize:Lcom/android/camera/CameraSize;

    :goto_0
    invoke-interface {p5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p1

    iget-object p3, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mUltraTelePictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p3}, Lcom/android/camera2/CameraConfigManager;->setUltraTelePictureSize(Lcom/android/camera/CameraSize;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "updateSize: [SAT]ultra tele picture size: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mUltraTelePictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p3, v2, [Ljava/lang/Object;

    const-string v3, "CameraSizeManager"

    invoke-static {v3, p1, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    const/16 p1, 0x20

    invoke-static {v0, p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p4}, Lcom/android/camera/PictureSizeManager;->getBestRawPictureSize(Ljava/util/List;I)Lcom/android/camera/CameraSize;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mRawSizeOfUltraTele:Lcom/android/camera/CameraSize;

    invoke-interface {p5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mRawSizeOfUltraTele:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p2}, Lcom/android/camera2/CameraConfigManager;->setRawSizeOfUltraTele(Lcom/android/camera/CameraSize;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateSize: [SAT]ultra tele raw size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mRawSizeOfUltraTele:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v3, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isFakeSatV2Supported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedFakeSatYuvSizes(Lcom/android/camera2/CameraCapabilities;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p4, p5}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;ILcom/android/camera/module/common/ModuleCameraManagerInterface;)Lcom/android/camera/CameraSize;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatUltraTelePictureSize:Lcom/android/camera/CameraSize;

    invoke-interface {p5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatUltraTelePictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p2}, Lcom/android/camera2/CameraConfigManager;->setFakeSatUltraTelePictureSize(Lcom/android/camera/CameraSize;)V

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedFakeSatJpegSizes(Lcom/android/camera2/CameraCapabilities;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p4, p5}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;ILcom/android/camera/module/common/ModuleCameraManagerInterface;)Lcom/android/camera/CameraSize;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatUltraTeleOutputSize:Lcom/android/camera/CameraSize;

    invoke-interface {p5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatUltraTeleOutputSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p2}, Lcom/android/camera2/CameraConfigManager;->setFakeSatUltraTeleOutputSize(Lcom/android/camera/CameraSize;)V

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    iget-object p3, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatUltraTelePictureSize:Lcom/android/camera/CameraSize;

    aput-object p3, p2, v2

    iget-object p0, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatUltraTeleOutputSize:Lcom/android/camera/CameraSize;

    aput-object p0, p2, v1

    const-string/jumbo p0, "updateSize: [SAT]ultra tele fake size: %s -> %s"

    invoke-static {p1, p0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public updateSatUltraWideSize(IZILcom/android/camera/module/common/ModuleCameraManagerInterface;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageFormat",
            "requireRaw",
            "moduleIndex",
            "moduleCameraManager",
            "operationMode"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-static {v0, p5}, Lcom/android/camera2/CameraCapabilitiesUtil;->setOperatingMode(Lcom/android/camera2/CameraCapabilities;I)V

    invoke-static {v0, p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object p1

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p5

    invoke-virtual {p5}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0O0o000()Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p5

    invoke-virtual {p5}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000OoOO()I

    move-result p5

    invoke-interface {p4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getBogusCameraId()I

    move-result v3

    invoke-interface {p4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v4

    invoke-static {p1, p5, p3, v3, v4}, Lcom/android/camera/PictureSizeManager;->initializeLimitWidth(Ljava/util/List;IIILcom/android/camera2/CameraCapabilities;)V

    invoke-static {p3}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(I)Lcom/android/camera/CameraSize;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mUltraWidePictureSize:Lcom/android/camera/CameraSize;

    goto :goto_0

    :cond_0
    invoke-static {p1, p3, p4}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;ILcom/android/camera/module/common/ModuleCameraManagerInterface;)Lcom/android/camera/CameraSize;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mUltraWidePictureSize:Lcom/android/camera/CameraSize;

    :goto_0
    invoke-interface {p4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p1

    iget-object p5, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mUltraWidePictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p5}, Lcom/android/camera2/CameraConfigManager;->setUltraWidePictureSize(Lcom/android/camera/CameraSize;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p5, "updateSize: [SAT]ultra wide picture size: "

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mUltraWidePictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p5, v2, [Ljava/lang/Object;

    const-string v3, "CameraSizeManager"

    invoke-static {v3, p1, p5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    const/16 p1, 0x20

    invoke-static {v0, p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/android/camera/PictureSizeManager;->getBestRawPictureSize(Ljava/util/List;I)Lcom/android/camera/CameraSize;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mRawSizeOfUltraWide:Lcom/android/camera/CameraSize;

    invoke-interface {p4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mRawSizeOfUltraWide:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p2}, Lcom/android/camera2/CameraConfigManager;->setRawSizeOfUltraWide(Lcom/android/camera/CameraSize;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateSize: [SAT]ultra wide raw size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mRawSizeOfUltraWide:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v3, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isFakeSatV2Supported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedFakeSatYuvSizes(Lcom/android/camera2/CameraCapabilities;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p3, p4}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;ILcom/android/camera/module/common/ModuleCameraManagerInterface;)Lcom/android/camera/CameraSize;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatUltraWidePictureSize:Lcom/android/camera/CameraSize;

    invoke-interface {p4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatUltraWidePictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p2}, Lcom/android/camera2/CameraConfigManager;->setFakeSatUltraWidePictureSize(Lcom/android/camera/CameraSize;)V

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedFakeSatJpegSizes(Lcom/android/camera2/CameraCapabilities;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p3, p4}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;ILcom/android/camera/module/common/ModuleCameraManagerInterface;)Lcom/android/camera/CameraSize;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatUltraWideOutputSize:Lcom/android/camera/CameraSize;

    invoke-interface {p4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatUltraWideOutputSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p2}, Lcom/android/camera2/CameraConfigManager;->setFakeSatUltraWideOutputSize(Lcom/android/camera/CameraSize;)V

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    iget-object p3, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatUltraWidePictureSize:Lcom/android/camera/CameraSize;

    aput-object p3, p2, v2

    iget-object p0, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatUltraWideOutputSize:Lcom/android/camera/CameraSize;

    aput-object p0, p2, v1

    const-string/jumbo p0, "updateSize: [SAT]ultra wide fake size: %s -> %s"

    invoke-static {p1, p0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public updateSatWideSize(IZIILcom/android/camera/module/common/ModuleCameraManagerInterface;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageFormat",
            "requireRaw",
            "operationMode",
            "moduleIndex",
            "moduleCameraManager"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getWideCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-static {v0, p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->setOperatingMode(Lcom/android/camera2/CameraCapabilities;I)V

    invoke-static {v0, p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateSize: [SAT]wide picture size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v3

    invoke-virtual {v3}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->oooOO0()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v3

    invoke-virtual {v3}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0O0()I

    move-result v3

    invoke-interface {p5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getBogusCameraId()I

    move-result v4

    invoke-interface {p5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v5

    invoke-static {p3, v3, p4, v4, v5}, Lcom/android/camera/PictureSizeManager;->initializeLimitWidth(Ljava/util/List;IIILcom/android/camera2/CameraCapabilities;)V

    invoke-static {p4}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(I)Lcom/android/camera/CameraSize;

    move-result-object p3

    iput-object p3, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mWidePictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", width limit: "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-static {p3, p4, p5}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;ILcom/android/camera/module/common/ModuleCameraManagerInterface;)Lcom/android/camera/CameraSize;

    move-result-object p3

    iput-object p3, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mWidePictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-interface {p5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p3

    iget-object v3, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mWidePictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p3, v3}, Lcom/android/camera2/CameraConfigManager;->setWidePictureSize(Lcom/android/camera/CameraSize;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "CameraSizeManager"

    invoke-static {v3, p3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    const/16 p2, 0x20

    invoke-static {v0, p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object p2

    invoke-static {p2, p4}, Lcom/android/camera/PictureSizeManager;->getBestRawPictureSize(Ljava/util/List;I)Lcom/android/camera/CameraSize;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mRawSizeOfWide:Lcom/android/camera/CameraSize;

    invoke-interface {p5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p2

    iget-object p3, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mRawSizeOfWide:Lcom/android/camera/CameraSize;

    invoke-virtual {p2, p3}, Lcom/android/camera2/CameraConfigManager;->setRawSizeOfWide(Lcom/android/camera/CameraSize;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "updateSize: [SAT]wide raw size: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mRawSizeOfWide:Lcom/android/camera/CameraSize;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {v3, p2, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isFakeSatV2Supported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_2

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedFakeSatYuvSizes(Lcom/android/camera2/CameraCapabilities;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2, p4, p5}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;ILcom/android/camera/module/common/ModuleCameraManagerInterface;)Lcom/android/camera/CameraSize;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatWidePictureSize:Lcom/android/camera/CameraSize;

    invoke-interface {p5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p2

    iget-object v2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatWidePictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p2, v2}, Lcom/android/camera2/CameraConfigManager;->setFakeSatWidePictureSize(Lcom/android/camera/CameraSize;)V

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedFakeSatJpegSizes(Lcom/android/camera2/CameraCapabilities;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2, p4, p5}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;ILcom/android/camera/module/common/ModuleCameraManagerInterface;)Lcom/android/camera/CameraSize;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatWideOutputSize:Lcom/android/camera/CameraSize;

    invoke-interface {p5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p2

    iget-object v2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatWideOutputSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p2, v2}, Lcom/android/camera2/CameraConfigManager;->setFakeSatWideOutputSize(Lcom/android/camera/CameraSize;)V

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatWidePictureSize:Lcom/android/camera/CameraSize;

    aput-object v4, v2, v1

    iget-object p0, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatWideOutputSize:Lcom/android/camera/CameraSize;

    aput-object p0, v2, p3

    const-string/jumbo p0, "updateSize: [SAT]wide fake size: %s -> %s"

    invoke-static {p2, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    move p3, v1

    :goto_1
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getBinningSrData(Lcom/android/camera2/CameraCapabilities;)Lcom/android/camera2/vendortag/struct/BinningSrData;

    move-result-object p0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportBinningSrData(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSize: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera2/vendortag/struct/BinningSrData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v3, p2, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0, p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/camera2/vendortag/struct/BinningSrData;->getMaxYuvWidthForWideSensor()I

    move-result p2

    invoke-interface {p5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getBogusCameraId()I

    move-result v0

    invoke-interface {p5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    invoke-static {p1, p2, p4, v0, v2}, Lcom/android/camera/PictureSizeManager;->initializeLimitWidth(Ljava/util/List;IIILcom/android/camera2/CameraCapabilities;)V

    invoke-static {p4}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(I)Lcom/android/camera/CameraSize;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/camera2/vendortag/struct/BinningSrData;->getMaxJpegWidthForWideSensor()I

    move-result v0

    invoke-interface {p5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getBogusCameraId()I

    move-result v2

    invoke-interface {p5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v4

    invoke-static {p1, v0, p4, v2, v4}, Lcom/android/camera/PictureSizeManager;->initializeLimitWidth(Ljava/util/List;IIILcom/android/camera2/CameraCapabilities;)V

    invoke-static {p4}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(I)Lcom/android/camera/CameraSize;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/android/camera2/vendortag/struct/BinningSrData;->setBinningSrInputSize(Lcom/android/camera/CameraSize;)V

    invoke-virtual {p0, p1}, Lcom/android/camera2/vendortag/struct/BinningSrData;->setBinningSrOutputSize(Lcom/android/camera/CameraSize;)V

    invoke-interface {p5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/camera2/CameraConfigManager;->setBinningSrData(Lcom/android/camera2/vendortag/struct/BinningSrData;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "updateSize: [SAT]wide binning sr size: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "->binningSrOutputSize"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-interface {p5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigManager;->setBinningSrData(Lcom/android/camera2/vendortag/struct/BinningSrData;)V

    :goto_2
    move v1, p3

    :cond_4
    return v1
.end method

.method public updateSensorRawImageSize(Lcom/android/camera/module/common/ModuleCameraManagerInterface;IZ)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cameraManager",
            "moduleIndex",
            "isCupCaptureEnabled"
        }
    .end annotation

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object v2

    const-string v3, "CameraSizeManager"

    const/4 v4, 0x0

    const/16 v5, 0xa7

    if-ne p2, v5, :cond_3

    invoke-static {v0, v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getCustomManualPictureSize(Lcom/android/camera2/CameraCapabilities;I)Lcom/android/camera/CameraSize;

    move-result-object p3

    if-eqz p3, :cond_0

    iput-object p3, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSensorRawImageSize:Lcom/android/camera/CameraSize;

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getBogusCameraId()I

    move-result p3

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    invoke-static {v2, v4, p2, p3, p1}, Lcom/android/camera/PictureSizeManager;->initialize(Ljava/util/List;IIILcom/android/camera2/CameraCapabilities;)V

    const p1, 0x3faaaaaa

    invoke-static {p1}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(F)Lcom/android/camera/CameraSize;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSensorRawImageSize:Lcom/android/camera/CameraSize;

    goto :goto_1

    :cond_2
    :goto_0
    new-array p1, v4, [Ljava/lang/Object;

    const-string/jumbo p2, "updateSize: The supported raw size list return from hal is null!"

    invoke-static {v3, p2, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    invoke-static {v0, v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputStreamSizes(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/android/camera/PictureSizeManager;->getBestRawPictureSize(Ljava/util/List;I)Lcom/android/camera/CameraSize;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSensorRawImageSize:Lcom/android/camera/CameraSize;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateSize : The best sensor raw image size for cup capture "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSensorRawImageSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v4, [Ljava/lang/Object;

    invoke-static {v3, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    const/16 p1, 0xad

    if-ne p2, p1, :cond_5

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMiviNightModeSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {v0, v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputStreamSizes(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/android/camera/PictureSizeManager;->getBestRawPictureSize(Ljava/util/List;I)Lcom/android/camera/CameraSize;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSensorRawImageSize:Lcom/android/camera/CameraSize;

    goto :goto_1

    :cond_5
    invoke-static {v2, p2}, Lcom/android/camera/PictureSizeManager;->getBestRawPictureSize(Ljava/util/List;I)Lcom/android/camera/CameraSize;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSensorRawImageSize:Lcom/android/camera/CameraSize;

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateSize: The best sensor raw image size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSensorRawImageSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public updateThirdPartyPicSize(IZLcom/android/camera/module/common/ModuleCameraManagerInterface;IZ)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageFormat",
            "imageCaptureIntent",
            "cameraManager",
            "moduleIndex",
            "parallelSession"
        }
    .end annotation

    const-string v0, "CameraSizeManager"

    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    if-eqz p2, :cond_2

    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object p2

    iget p2, p2, Lcom/android/camera/CameraSize;->width:I

    const/16 v2, 0x1004

    if-le p2, v2, :cond_2

    invoke-static {v1, p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getBogusCameraId()I

    move-result v4

    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v5

    invoke-static {p1, v2, p4, v4, v5}, Lcom/android/camera/PictureSizeManager;->initializeLimitWidth(Ljava/util/List;IIILcom/android/camera2/CameraCapabilities;)V

    invoke-static {p4}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(I)Lcom/android/camera/CameraSize;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-array p1, v3, [Ljava/lang/Object;

    const-string/jumbo p4, "updateSize: No find tempSize for tripartite used"

    invoke-static {v0, p4, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    if-eqz p2, :cond_2

    iget p1, p2, Lcom/android/camera/CameraSize;->width:I

    const/16 p4, 0xbb8

    if-lt p1, p4, :cond_2

    if-eqz p5, :cond_1

    const/16 p1, 0x100

    invoke-static {v1, p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object p1

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result p4

    if-eqz p4, :cond_0

    iget p4, p2, Lcom/android/camera/CameraSize;->width:I

    iget p5, p2, Lcom/android/camera/CameraSize;->height:I

    invoke-static {p4, p5}, Ljava/lang/Math;->min(II)I

    move-result p4

    new-instance p5, Lcom/android/camera/CameraSize;

    invoke-direct {p5, p4, p4}, Lcom/android/camera/CameraSize;-><init>(II)V

    goto :goto_1

    :cond_0
    move-object p5, p2

    :goto_1
    invoke-interface {p1, p5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p3, p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setPictureSize(Lcom/android/camera/CameraSize;)V

    iput-object p5, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mOutputPictureSize:Lcom/android/camera/CameraSize;

    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "JPEG"

    aput-object p2, p1, v3

    const/4 p2, 0x1

    aput-object p5, p1, p2

    const-string/jumbo p2, "updateSize: algoUp picture size for tripartite (%s): %s"

    invoke-static {p0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    invoke-interface {p3, p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setPictureSize(Lcom/android/camera/CameraSize;)V

    :cond_2
    :goto_2
    return-void
.end method
