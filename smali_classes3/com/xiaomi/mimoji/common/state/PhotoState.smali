.class public Lcom/xiaomi/mimoji/common/state/PhotoState;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/mimoji/common/state/IMiState;
.implements Lcom/android/camera2/Camera2Proxy$PictureCallback;


# static fields
.field public static final CAMERA_FACING_BACK:I = 0x0

.field public static final CAMERA_FACING_FRONT:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Lcom/android/camera/ActivityBase;

.field private mDetectResult:I

.field private mIsNeedCapture:Z

.field private final mMiStateChange:Lcom/xiaomi/mimoji/common/state/MiStateChangeImpl;

.field private final mMimojiProcessing:Lcom/xiaomi/mimoji/common/MimojiProcessing;

.field private final mTextureId:[I

.field private final mUiHandler:Landroid/os/Handler;

.field private mimojiControl:Lcom/xiaomi/mimoji/common/mvp/base/protocol/MimojiModeProtocol$MimojiControl;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIMOJI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/xiaomi/mimoji/common/state/PhotoState;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mimoji/common/state/PhotoState;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/mimoji/common/state/MiStateChangeImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mMiStateChange"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/xiaomi/mimoji/common/state/PhotoState;->mTextureId:[I

    iput-object p1, p0, Lcom/xiaomi/mimoji/common/state/PhotoState;->mMiStateChange:Lcom/xiaomi/mimoji/common/state/MiStateChangeImpl;

    invoke-virtual {p1}, Lcom/xiaomi/mimoji/common/state/MiStateChangeImpl;->getContext()Lcom/android/camera/ActivityBase;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/mimoji/common/state/PhotoState;->mContext:Lcom/android/camera/ActivityBase;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaomi/mimoji/common/state/PhotoState;->mUiHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object p1

    const-class v0, Lcom/xiaomi/mimoji/common/MimojiProcessing;

    invoke-virtual {p1, v0}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/mimoji/common/MimojiProcessing;

    iput-object p1, p0, Lcom/xiaomi/mimoji/common/state/PhotoState;->mMimojiProcessing:Lcom/xiaomi/mimoji/common/MimojiProcessing;

    return-void
.end method

.method private dealCaptureData(Lcom/android/camera/Camera;[BLandroid/graphics/Rect;)V
    .locals 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mActivityBase",
            "pixels",
            "renderRect"
        }
    .end annotation

    move-object/from16 v1, p0

    sget-object v0, Lcom/xiaomi/mimoji/common/state/PhotoState;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "dealCaptureData: "

    invoke-static {v0, v4, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    iget-object v0, v1, Lcom/xiaomi/mimoji/common/state/PhotoState;->mMiStateChange:Lcom/xiaomi/mimoji/common/state/MiStateChangeImpl;

    invoke-virtual {v0}, Lcom/xiaomi/mimoji/common/state/MiStateChangeImpl;->isFrontCamera()Z

    move-result v0

    const/16 v4, 0x5a

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/16 v12, 0x10e

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/xiaomi/mimoji/common/state/PhotoState;->mMimojiProcessing:Lcom/xiaomi/mimoji/common/MimojiProcessing;

    invoke-virtual {v0}, Lcom/xiaomi/mimoji/common/MimojiProcessing;->getOrientation()I

    move-result v0

    if-eq v0, v4, :cond_1

    iget-object v0, v1, Lcom/xiaomi/mimoji/common/state/PhotoState;->mMimojiProcessing:Lcom/xiaomi/mimoji/common/MimojiProcessing;

    invoke-virtual {v0}, Lcom/xiaomi/mimoji/common/MimojiProcessing;->getOrientation()I

    move-result v0

    if-ne v0, v12, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/xiaomi/mimoji/common/state/PhotoState;->mMimojiProcessing:Lcom/xiaomi/mimoji/common/MimojiProcessing;

    invoke-virtual {v0}, Lcom/xiaomi/mimoji/common/MimojiProcessing;->getOrientation()I

    move-result v0

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_2

    invoke-virtual {v10, v5, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v10, v6, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_2
    :goto_1
    const/4 v13, 0x1

    const/4 v14, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/xiaomi/mimoji/common/state/PhotoState;->mMiStateChange:Lcom/xiaomi/mimoji/common/state/MiStateChangeImpl;

    invoke-virtual {v0}, Lcom/xiaomi/mimoji/common/state/MiStateChangeImpl;->getDrawSize()Landroid/util/Size;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v9

    const/4 v11, 0x0

    move-object v5, v3

    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v6, v1, Lcom/xiaomi/mimoji/common/state/PhotoState;->mMiStateChange:Lcom/xiaomi/mimoji/common/state/MiStateChangeImpl;

    invoke-virtual {v6}, Lcom/xiaomi/mimoji/common/state/MiStateChangeImpl;->isFrontCamera()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v1, Lcom/xiaomi/mimoji/common/state/PhotoState;->mMimojiProcessing:Lcom/xiaomi/mimoji/common/MimojiProcessing;

    invoke-virtual {v6}, Lcom/xiaomi/mimoji/common/MimojiProcessing;->getOrientation()I

    move-result v6

    rem-int/lit16 v6, v6, 0xb4

    if-nez v6, :cond_3

    iget-object v6, v1, Lcom/xiaomi/mimoji/common/state/PhotoState;->mMimojiProcessing:Lcom/xiaomi/mimoji/common/MimojiProcessing;

    invoke-virtual {v6}, Lcom/xiaomi/mimoji/common/MimojiProcessing;->getOrientation()I

    move-result v6

    add-int/lit16 v6, v6, 0xb4

    rem-int/lit16 v6, v6, 0x168

    goto :goto_2

    :cond_3
    iget-object v6, v1, Lcom/xiaomi/mimoji/common/state/PhotoState;->mMimojiProcessing:Lcom/xiaomi/mimoji/common/MimojiProcessing;

    invoke-virtual {v6}, Lcom/xiaomi/mimoji/common/MimojiProcessing;->getOrientation()I

    move-result v6

    :goto_2
    if-eqz p1, :cond_a

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getEncodingQuality(Z)Lcom/android/camera/EncodingQuality;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/camera/EncodingQuality;->toInteger(Z)I

    move-result v7

    invoke-static {v5, v7}, Lcom/android/camera/Util;->getBitmapData(Landroid/graphics/Bitmap;I)[B

    move-result-object v7

    iget-object v8, v1, Lcom/xiaomi/mimoji/common/state/PhotoState;->mMiStateChange:Lcom/xiaomi/mimoji/common/state/MiStateChangeImpl;

    invoke-virtual {v8}, Lcom/xiaomi/mimoji/common/state/MiStateChangeImpl;->isFrontCamera()Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v8, v3

    goto :goto_3

    :cond_4
    move-object v8, v5

    :goto_3
    iget-object v9, v1, Lcom/xiaomi/mimoji/common/state/PhotoState;->mMiStateChange:Lcom/xiaomi/mimoji/common/state/MiStateChangeImpl;

    invoke-virtual {v9}, Lcom/xiaomi/mimoji/common/state/MiStateChangeImpl;->isFrontCamera()Z

    move-result v9

    invoke-static {v14, v8, v6, v9}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)Lcom/android/camera/Thumbnail;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/Thumbnail;->startWaitingForUri()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v8

    invoke-virtual {v8, v6, v13, v13}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;ZZ)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v6

    check-cast v6, Lcom/xiaomi/mimoji/common/module/MimojiModule;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/android/camera/module/BaseModule;->getActualCameraId()I

    move-result v8

    move/from16 v16, v8

    goto :goto_4

    :cond_5
    move/from16 v16, v2

    :goto_4
    new-instance v8, Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    const/16 v19, -0x4

    const/16 v20, 0x0

    move-object v15, v8

    invoke-direct/range {v15 .. v20}, Lcom/xiaomi/camera/core/ParallelTaskData;-><init>(IJILjava/lang/String;)V

    invoke-virtual {v8, v7, v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->fillJpegData([BI)V

    iget-object v7, v1, Lcom/xiaomi/mimoji/common/state/PhotoState;->mMiStateChange:Lcom/xiaomi/mimoji/common/state/MiStateChangeImpl;

    invoke-virtual {v7}, Lcom/xiaomi/mimoji/common/state/MiStateChangeImpl;->isFrontCamera()Z

    move-result v7

    if-eqz v7, :cond_6

    move v7, v13

    goto :goto_5

    :cond_6
    move v7, v2

    :goto_5
    iget-object v9, v1, Lcom/xiaomi/mimoji/common/state/PhotoState;->mMimojiProcessing:Lcom/xiaomi/mimoji/common/MimojiProcessing;

    invoke-virtual {v9}, Lcom/xiaomi/mimoji/common/MimojiProcessing;->getOrientation()I

    move-result v9

    invoke-static {v7, v9}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v7

    add-int/2addr v7, v12

    rem-int/lit16 v7, v7, 0x168

    new-instance v9, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    const/16 v10, 0x100

    invoke-direct {v9, v0, v0, v0, v10}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;-><init>(Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;I)V

    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraWaterMarkOpen()Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setHasDualWaterMark(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setJpegRotation(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v7

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getEncodingQuality(Z)Lcom/android/camera/EncodingQuality;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/android/camera/EncodingQuality;->toInteger(Z)I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setJpegQuality(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v7

    sget v9, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    invoke-virtual {v7, v9}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setFilterId(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v7

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v9

    if-eqz v9, :cond_7

    move v4, v12

    :cond_7
    invoke-virtual {v7, v4}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setOrientation(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v4

    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimeWaterMarkOpen()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static/range {p1 .. p1}, Lcom/android/camera/watermark/WaterMarkUtil;->getTimeWatermarkStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :cond_8
    move-object v7, v14

    :goto_6
    invoke-virtual {v4, v7}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setTimeWaterMarkString(Ljava/lang/String;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/mimoji/common/state/PhotoState;->getDeviceWaterMarkParam()Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setDeviceWatermarkParam(Lcom/android/camera/effect/renders/DeviceWatermarkParam;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/mimoji/common/state/PhotoState;->getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v7

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v6

    goto :goto_7

    :cond_9
    const/4 v6, -0x1

    :goto_7
    invoke-virtual {v7, v6}, Lcom/xiaomi/camera/core/PictureInfo;->setCurrentModuleIndex(I)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setPictureInfo(Lcom/xiaomi/camera/core/PictureInfo;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setLocation(Landroid/location/Location;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->build()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->fillParameter(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    invoke-virtual {v0, v8, v14, v14, v14}, Lcom/android/camera/storage/ImageSaver;->onParallelProcessFinish(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_a
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_b
    if-eqz v5, :cond_c

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    :cond_c
    iget-object v0, v1, Lcom/xiaomi/mimoji/common/state/PhotoState;->mMiStateChange:Lcom/xiaomi/mimoji/common/state/MiStateChangeImpl;

    invoke-virtual {v0, v2}, Lcom/xiaomi/mimoji/common/state/MiStateChangeImpl;->setActionState(I)V

    if-eqz p1, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    instance-of v1, v0, Lcom/xiaomi/mimoji/common/module/MimojiModule;

    if-eqz v1, :cond_f

    goto :goto_9

    :catchall_0
    move-exception v0

    move-object v14, v5

    goto :goto_a

    :catch_0
    move-exception v0

    move-object v14, v5

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    :goto_8
    :try_start_2
    sget-object v4, Lcom/xiaomi/mimoji/common/state/PhotoState;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mimoji void CaptureCallback[byteBuffer] exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v0, v5}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_d
    if-eqz v14, :cond_e

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    :cond_e
    iget-object v0, v1, Lcom/xiaomi/mimoji/common/state/PhotoState;->mMiStateChange:Lcom/xiaomi/mimoji/common/state/MiStateChangeImpl;

    invoke-virtual {v0, v2}, Lcom/xiaomi/mimoji/common/state/MiStateChangeImpl;->setActionState(I)V

    if-eqz p1, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    instance-of v1, v0, Lcom/xiaomi/mimoji/common/module/MimojiModule;

    if-eqz v1, :cond_f

    :goto_9
    check-cast v0, Lcom/xiaomi/mimoji/common/module/MimojiModule;

    invoke-virtual {v0}, Lcom/xiaomi/mimoji/common/module/MimojiModule;->onMimojiCaptureCallback()V

    :cond_f
    invoke-static {}, Lcom/xiaomi/mimoji/common/utils/MimojiDumpUtil;->getInstance()Lcom/xiaomi/mimoji/common/utils/MimojiDumpUtil;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/xiaomi/mimoji/common/utils/MimojiDumpUtil;->dumpTakePicture(I)V

    return-void

    :goto_a
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_10
    if-eqz v14, :cond_11

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_11

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    :cond_11
    iget-object v1, v1, Lcom/xiaomi/mimoji/common/state/PhotoState;->mMiStateChange:Lcom/xiaomi/mimoji/common/state/MiStateChangeImpl;

    invoke-virtual {v1, v2}, Lcom/xiaomi/mimoji/common/state/MiStateChangeImpl;->setActionState(I)V

    if-eqz p1, :cond_12

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v1

    instance-of v2, v1, Lcom/xiaomi/mimoji/common/module/MimojiModule;

    if-eqz v2, :cond_12

    check-cast v1, Lcom/xiaomi/mimoji/common/module/MimojiModule;

    invoke-virtual {v1}, Lcom/xiaomi/mimoji/common/module/MimojiModule;->onMimojiCaptureCallback()V

    :cond_12
    invoke-static {}, Lcom/xiaomi/mimoji/common/utils/MimojiDumpUtil;->getInstance()Lcom/xiaomi/mimoji/common/utils/MimojiDumpUtil;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/xiaomi/mimoji/common/utils/MimojiDumpUtil;->dumpTakePicture(I)V

    throw v0
.end method

.method private getDeviceWaterMarkParam()Lcom/android/camera/effect/renders/DeviceWatermarkParam;
    .locals 4

    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraWaterMarkOpen()Z

    move-result p0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCameraWaterMarkOpen()Z

    move-result v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelRearOn()Z

    move-result v1

    new-instance v2, Lcom/android/camera/effect/renders/DeviceWatermarkParam$Builder;

    invoke-static {}, Lcom/android/camera/watermark/gen2/WaterMarkUtil2;->getDualCameraWaterMarkFilePathVendor()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/android/camera/effect/renders/DeviceWatermarkParam$Builder;-><init>(ZZZLjava/lang/String;)V

    invoke-static {}, Lcom/android/camera/Util;->isLTR()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v0

    invoke-virtual {v0}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0O0o0oO()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/camera/effect/renders/DeviceWatermarkParam$Builder;->setLTR(Z)Lcom/android/camera/effect/renders/DeviceWatermarkParam$Builder;

    move-result-object v0

    const-string v1, ""

    if-eqz p0, :cond_2

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getCustomWatermark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/DeviceWatermarkParam$Builder;->setCustomText(Ljava/lang/String;)Lcom/android/camera/effect/renders/DeviceWatermarkParam$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/DeviceWatermarkParam$Builder;->build()Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    move-result-object p0

    return-object p0
.end method

.method private getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;
    .locals 1

    new-instance v0, Lcom/xiaomi/camera/core/PictureInfo;

    invoke-direct {v0}, Lcom/xiaomi/camera/core/PictureInfo;-><init>()V

    invoke-direct {p0}, Lcom/xiaomi/mimoji/common/state/PhotoState;->isFrontMirror()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/xiaomi/camera/core/PictureInfo;->setFrontMirror(Z)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/camera/core/PictureInfo;->setSensorType(Z)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/camera/core/PictureInfo;->setBokehFrontCamera(Z)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object p0

    const-string v0, "off"

    invoke-virtual {p0, v0}, Lcom/xiaomi/camera/core/PictureInfo;->setHdrType(Ljava/lang/String;)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object p0

    const v0, 0x800b

    invoke-virtual {p0, v0}, Lcom/xiaomi/camera/core/PictureInfo;->setOpMode(I)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PictureInfo;->end()V

    return-object p0
.end method

.method private isFrontMirror()Z
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mimoji/common/state/PhotoState;->mMiStateChange:Lcom/xiaomi/mimoji/common/state/MiStateChangeImpl;

    invoke-virtual {p0}, Lcom/xiaomi/mimoji/common/state/MiStateChangeImpl;->isFrontCamera()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontMirror()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$null$1(IILcom/android/camera/protocol/protocols/TopAlert;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "result",
            "noFaceToastId",
            "p"
        }
    .end annotation

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {p2, p0, p1}, Lcom/android/camera/protocol/protocols/TopAlert;->alertFaceDetect(ZI)V

    return-void
.end method

.method private synthetic lambda$onDrawFrame$0([BLandroid/graphics/Rect;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "pixels",
            "renderRect"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/mimoji/common/state/PhotoState;->mContext:Lcom/android/camera/ActivityBase;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-direct {p0, v0, p1, p2}, Lcom/xiaomi/mimoji/common/state/PhotoState;->dealCaptureData(Lcom/android/camera/Camera;[BLandroid/graphics/Rect;)V

    return-void
.end method

.method private synthetic lambda$onPreviewFrame$2(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "result"
        }
    .end annotation

    iget-object p0, p0, Lcom/xiaomi/mimoji/common/state/PhotoState;->mMimojiProcessing:Lcom/xiaomi/mimoji/common/MimojiProcessing;

    invoke-virtual {p0}, Lcom/xiaomi/mimoji/common/MimojiProcessing;->getDriveType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "body"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    const p0, 0x7f12058a

    goto :goto_0

    :cond_0
    const p0, 0x7f120535

    goto :goto_0

    :cond_1
    const p0, 0x7f12054c

    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO0OO/OooOO0/OooO0Oo/OooO00o/o00O000o/OooOO0O;

    invoke-direct {v1, p1, p0}, LOooO0OO/OooOO0/OooO0Oo/OooO00o/o00O000o/OooOO0O;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private readPreviewPixels(Landroid/graphics/Rect;)[B
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderRect"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result p0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v3, p1, Landroid/graphics/Rect;->right:I

    mul-int p0, v3, v4

    mul-int/lit8 p0, p0, 0x4

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    const/4 v1, 0x0

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move-object v7, p0

    invoke-static/range {v1 .. v7}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public synthetic OooO00o([BLandroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mimoji/common/state/PhotoState;->lambda$onDrawFrame$0([BLandroid/graphics/Rect;)V

    return-void
.end method

.method public synthetic OooO0O0(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mimoji/common/state/PhotoState;->lambda$onPreviewFrame$2(I)V

    return-void
.end method

.method public initModeState()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mimoji/common/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->impl2()Lcom/xiaomi/mimoji/common/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mimoji/common/state/PhotoState;->mimojiControl:Lcom/xiaomi/mimoji/common/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    return-void
.end method

.method public onDrawFrame(Landroid/graphics/Rect;IIZZ)Z
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "renderRect",
            "width",
            "height",
            "copyTexture",
            "isFrameAvailable"
        }
    .end annotation

    move-object v0, p0

    move-object v9, p1

    iget-object v1, v0, Lcom/xiaomi/mimoji/common/state/PhotoState;->mimojiControl:Lcom/xiaomi/mimoji/common/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    const/4 v10, 0x0

    if-eqz v1, :cond_3

    iget-object v2, v0, Lcom/xiaomi/mimoji/common/state/PhotoState;->mContext:Lcom/android/camera/ActivityBase;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v6, v0, Lcom/xiaomi/mimoji/common/state/PhotoState;->mTextureId:[I

    iget-boolean v8, v0, Lcom/xiaomi/mimoji/common/state/PhotoState;->mIsNeedCapture:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v7, p5

    invoke-interface/range {v1 .. v8}, Lcom/xiaomi/mimoji/common/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->drawPreview(Landroid/graphics/Rect;IIZ[IZZ)Z

    move-result v11

    if-eqz p4, :cond_1

    return v11

    :cond_1
    iget-boolean v1, v0, Lcom/xiaomi/mimoji/common/state/PhotoState;->mIsNeedCapture:Z

    if-eqz v1, :cond_2

    iput-boolean v10, v0, Lcom/xiaomi/mimoji/common/state/PhotoState;->mIsNeedCapture:Z

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v1

    iget v2, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iget-object v2, v0, Lcom/xiaomi/mimoji/common/state/PhotoState;->mMiStateChange:Lcom/xiaomi/mimoji/common/state/MiStateChangeImpl;

    invoke-virtual {v2}, Lcom/xiaomi/mimoji/common/state/MiStateChangeImpl;->getFboUtils()Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->createFBO(II)V

    iget-object v1, v0, Lcom/xiaomi/mimoji/common/state/PhotoState;->mMiStateChange:Lcom/xiaomi/mimoji/common/state/MiStateChangeImpl;

    invoke-virtual {v1}, Lcom/xiaomi/mimoji/common/state/MiStateChangeImpl;->getFboUtils()Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->bindFrameBufferInfo()V

    iget-object v1, v0, Lcom/xiaomi/mimoji/common/state/PhotoState;->mimojiControl:Lcom/xiaomi/mimoji/common/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/xiaomi/mimoji/common/state/PhotoState;->mTextureId:[I

    const/4 v8, 0x1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v7, p5

    invoke-interface/range {v1 .. v8}, Lcom/xiaomi/mimoji/common/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->drawPreview(Landroid/graphics/Rect;IIZ[IZZ)Z

    invoke-static {}, Lcom/xiaomi/mimoji/common/utils/MimojiDumpUtil;->getInstance()Lcom/xiaomi/mimoji/common/utils/MimojiDumpUtil;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/xiaomi/mimoji/common/utils/MimojiDumpUtil;->dumpTakePicture(I)V

    invoke-direct {p0, p1}, Lcom/xiaomi/mimoji/common/state/PhotoState;->readPreviewPixels(Landroid/graphics/Rect;)[B

    move-result-object v1

    iget-object v2, v0, Lcom/xiaomi/mimoji/common/state/PhotoState;->mMiStateChange:Lcom/xiaomi/mimoji/common/state/MiStateChangeImpl;

    invoke-virtual {v2}, Lcom/xiaomi/mimoji/common/state/MiStateChangeImpl;->getFboUtils()Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->unbindFrameBufferInfo()V

    iget-object v2, v0, Lcom/xiaomi/mimoji/common/state/PhotoState;->mMiStateChange:Lcom/xiaomi/mimoji/common/state/MiStateChangeImpl;

    invoke-virtual {v2}, Lcom/xiaomi/mimoji/common/state/MiStateChangeImpl;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, LOooO0OO/OooOO0/OooO0Oo/OooO00o/o00O000o/OooOO0;

    invoke-direct {v3, p0, v1, p1}, LOooO0OO/OooOO0/OooO0Oo/OooO00o/o00O000o/OooOO0;-><init>(Lcom/xiaomi/mimoji/common/state/PhotoState;[BLandroid/graphics/Rect;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return v11

    :cond_3
    :goto_0
    sget-object v0, Lcom/xiaomi/mimoji/common/state/PhotoState;->TAG:Ljava/lang/String;

    new-array v1, v10, [Ljava/lang/Object;

    const-string v2, "onDrawFrame: control is null"

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v10
.end method

.method public onModeStateBack(IZ)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "backStateDepth",
            "isShowPannel"
        }
    .end annotation

    sget-object p0, Lcom/xiaomi/mimoji/common/state/PhotoState;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "onModeStateBack: "

    invoke-static {p0, p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onPreviewFrame(Landroid/media/Image;Lcom/android/camera2/Camera2Proxy;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "previewImage",
            "camera",
            "deviceOrientation"
        }
    .end annotation

    iget-object p2, p0, Lcom/xiaomi/mimoji/common/state/PhotoState;->mimojiControl:Lcom/xiaomi/mimoji/common/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    iget-object p3, p0, Lcom/xiaomi/mimoji/common/state/PhotoState;->mMiStateChange:Lcom/xiaomi/mimoji/common/state/MiStateChangeImpl;

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2, p1}, Lcom/xiaomi/mimoji/common/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->onPreviewFrame(Landroid/media/Image;)I

    move-result p1

    iget p2, p0, Lcom/xiaomi/mimoji/common/state/PhotoState;->mDetectResult:I

    if-ne p2, p1, :cond_1

    return-void

    :cond_1
    iput p1, p0, Lcom/xiaomi/mimoji/common/state/PhotoState;->mDetectResult:I

    iget-object p2, p0, Lcom/xiaomi/mimoji/common/state/PhotoState;->mUiHandler:Landroid/os/Handler;

    new-instance p3, LOooO0OO/OooOO0/OooO0Oo/OooO00o/o00O000o/OooO;

    invoke-direct {p3, p0, p1}, LOooO0OO/OooOO0/OooO0Oo/OooO00o/o00O000o/OooO;-><init>(Lcom/xiaomi/mimoji/common/state/PhotoState;I)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    :goto_0
    sget-object p0, Lcom/xiaomi/mimoji/common/state/PhotoState;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "onPreviewFrame: control is null"

    invoke-static {p0, p2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onShutterButtonClick(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clickType"
        }
    .end annotation

    sget-object p1, Lcom/xiaomi/mimoji/common/state/PhotoState;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "onCaptureImage: "

    invoke-static {p1, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/xiaomi/mimoji/common/state/PhotoState;->mContext:Lcom/android/camera/ActivityBase;

    if-eqz v1, :cond_1

    check-cast v1, Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/mimoji/common/state/PhotoState;->mimojiControl:Lcom/xiaomi/mimoji/common/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaomi/mimoji/common/state/PhotoState;->mIsNeedCapture:Z

    iget-object v1, p0, Lcom/xiaomi/mimoji/common/state/PhotoState;->mContext:Lcom/android/camera/ActivityBase;

    invoke-interface {v1}, Lcom/android/camera/AppController;->getCurrentModuleIndex()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getFlashMode(I)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/xiaomi/mimoji/common/state/PhotoState;->mimojiControl:Lcom/xiaomi/mimoji/common/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    invoke-interface {p0}, Lcom/xiaomi/mimoji/common/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->getMimojiPara()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0, v1, p1, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2CaptureOrRecord(Ljava/util/Map;Ljava/lang/String;ZZ)V

    return-void

    :cond_1
    :goto_0
    new-array p0, v0, [Ljava/lang/Object;

    const-string v0, "onCaptureImage:is currentModule alive or control is null"

    invoke-static {p1, v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
