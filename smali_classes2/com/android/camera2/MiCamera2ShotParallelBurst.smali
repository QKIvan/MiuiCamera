.class public Lcom/android/camera2/MiCamera2ShotParallelBurst;
.super Lcom/android/camera2/MiCamera2ShotParallel;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera2/MiCamera2ShotParallel<",
        "Lcom/xiaomi/camera/core/ParallelTaskData;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShotParallelBurst"


# instance fields
.field private mAlgoType:I

.field private mBaseEvValue:I

.field private mCompletedNum:I

.field private mHdrCaptureRequestSettings:[I

.field private mHdrCheckerAdrc:I

.field private mHdrCheckerEvValue:[I

.field private mHdrCheckerSceneType:I

.field private mHdrType:I

.field private mIsAddTargetPreviewSurface:Z

.field private mIsFakeSatEnabled:Z

.field private mIsHdrBokeh:Z

.field private mIsHdrSR:Z

.field private mIsSatFusionShot:Z

.field private mMainPhysicalCameraId:I

.field private mMultiFrameNum:I

.field private mNbrOfNonBaseEVs:I

.field private mNightMotionMode:I

.field private mRawCallbackType:I

.field private mReConfigParallel:Z

.field private mSatFusionMainSurface:Landroid/view/Surface;

.field private mSatFusionSubSurface:Landroid/view/Surface;

.field private mSatFusionType:LOooO0Oo/OooO0OO;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mSequenceNum:I

.field private mShouldDoMFNR:Z

.field private mSingleCaptureForHDRplusMFNR:Z

.field private mSnapParam:Lcom/android/camera2/SnapParam;

.field private mSnapshotReqInfo:[B

.field private mStartedNum:I

.field private mSubPhysicalCameraId:I

.field private mSuperNightAepLineValue:[I

.field private mSuperNightValue:Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

.field private final mUseParallelVtCam:Z

.field private mZslHdrEnabled:Z


# direct methods
.method public constructor <init>(Lcom/android/camera2/MiCamera2;Landroid/hardware/camera2/CaptureResult;ZILOooO0Oo/OooO0OO;Lcom/android/camera/module/loader/camera2/ButtonStatus;Z)V
    .locals 1
    .param p5    # LOooO0Oo/OooO0OO;
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
            "miCamera",
            "previewCaptureResult",
            "useParallelVtCam",
            "rawCallbackType",
            "fusionType",
            "status",
            "mayReConfigParallel"
        }
    .end annotation

    invoke-direct {p0, p1, p6}, Lcom/android/camera2/MiCamera2ShotParallel;-><init>(Lcom/android/camera2/MiCamera2;Lcom/android/camera/module/loader/camera2/ButtonStatus;)V

    const/4 p6, 0x0

    iput p6, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    iput-boolean p6, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsSatFusionShot:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSatFusionMainSurface:Landroid/view/Surface;

    iput-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSatFusionSubSurface:Landroid/view/Surface;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMainPhysicalCameraId:I

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSubPhysicalCameraId:I

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mBaseEvValue:I

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mNbrOfNonBaseEVs:I

    iput-boolean p6, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mZslHdrEnabled:Z

    iput-boolean p3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mUseParallelVtCam:Z

    iput-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    iput p4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mRawCallbackType:I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fusionType -> "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, p6, [Ljava/lang/Object;

    const-string p4, "ShotParallelBurst"

    invoke-static {p4, p2, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p5, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSatFusionType:LOooO0Oo/OooO0OO;

    iput-boolean p7, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mReConfigParallel:Z

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getSnapParam()Lcom/android/camera2/SnapParam;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSnapParam:Lcom/android/camera2/SnapParam;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera2/MiCamera2ShotParallelBurst;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mUseParallelVtCam:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I
    .locals 0

    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mStartedNum:I

    return p0
.end method

.method public static synthetic access$1000(Lcom/android/camera2/MiCamera2ShotParallelBurst;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->isNightMotionEnabled()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$108(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I
    .locals 2

    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mStartedNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mStartedNum:I

    return v0
.end method

.method public static synthetic access$1100(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I
    .locals 0

    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMainPhysicalCameraId:I

    return p0
.end method

.method public static synthetic access$1200(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I
    .locals 0

    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSubPhysicalCameraId:I

    return p0
.end method

.method public static synthetic access$200(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I
    .locals 0

    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    return p0
.end method

.method public static synthetic access$300(Lcom/android/camera2/MiCamera2ShotParallelBurst;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsSatFusionShot:Z

    return p0
.end method

.method public static synthetic access$400(Lcom/android/camera2/MiCamera2ShotParallelBurst;)LOooO0Oo/OooO0OO;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSatFusionType:LOooO0Oo/OooO0OO;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I
    .locals 0

    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    return p0
.end method

.method public static synthetic access$600(Lcom/android/camera2/MiCamera2ShotParallelBurst;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrSR:Z

    return p0
.end method

.method public static synthetic access$700(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I
    .locals 0

    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mBaseEvValue:I

    return p0
.end method

.method public static synthetic access$800(Lcom/android/camera2/MiCamera2ShotParallelBurst;)[I
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I
    .locals 0

    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mCompletedNum:I

    return p0
.end method

.method public static synthetic access$908(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I
    .locals 2

    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mCompletedNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mCompletedNum:I

    return v0
.end method

.method private applyAlgoParameter(Landroid/hardware/camera2/CaptureRequest$Builder;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestBuilder",
            "requestIndex",
            "algo"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p3, v0, :cond_6

    const/4 v0, 0x2

    if-eq p3, v0, :cond_5

    const/4 v0, 0x3

    if-eq p3, v0, :cond_4

    const/4 v0, 0x7

    if-eq p3, v0, :cond_3

    const/16 v0, 0xa

    if-eq p3, v0, :cond_2

    const/16 v0, 0xc

    if-eq p3, v0, :cond_2

    const/16 v0, 0xf

    if-eq p3, v0, :cond_2

    const/16 v0, 0x14

    if-eq p3, v0, :cond_6

    const/16 v0, 0x11

    if-eq p3, v0, :cond_1

    const/16 v0, 0x12

    if-eq p3, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->applyPureViewParameter(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->applyFrontCupParameter(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->applySuperNightParameter(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->applyHHTParameter(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->applySuperResolutionParameter(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->applyClearShotParameter(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->applyHdrParameter(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    :goto_0
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0o;->OooOOoo()Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->copyAiSceneFromCaptureResultToRequest(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->isIn3OrMoreSatMode()Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p2}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/android/camera2/CaptureRequestBuilder;->applySmoothTransition(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V

    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    invoke-static {p1, p0, p3}, Lcom/android/camera2/CaptureRequestBuilder;->applySatFallback(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V

    :cond_8
    :goto_1
    return-void
.end method

.method private applyClearShotParameter(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "!isHALEnableFrontMFNR"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestBuilder"
        }
    .end annotation

    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mShouldDoMFNR:Z

    invoke-static {p1, p0}, Lcom/android/camera2/compat/MiCameraCompat;->applySwMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method private applyFrontCupParameter(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 6
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isFrontCUPLens"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "requestBuilder",
            "requestIndex"
        }
    .end annotation

    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    if-gt p2, v0, :cond_0

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v0

    invoke-virtual {v0}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00o0O()[I

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    aget v3, v0, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "applyFrontCupParameter: request[%d].ev = %d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "ShotParallelBurst"

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1, v5}, Lcom/android/camera2/CaptureRequestBuilder;->applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    aget p2, v0, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    invoke-static {p1, p0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    invoke-static {p1, v4}, Lcom/android/camera2/compat/MiCameraCompat;->applySwMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {p1, v4}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {p1, v5}, Lcom/android/camera2/compat/MiCameraCompat;->applyHdrBracketMode(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "wrong request index "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private applyHHTParameter(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportHHTAlgo"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestBuilder"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "ShotParallelBurst"

    const-string v3, "HHT algo in applyAlgoParameter"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mShouldDoMFNR:Z

    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applySwMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-static {p1, p0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    const/4 p0, 0x1

    invoke-static {p1, p0}, Lcom/android/camera2/compat/MiCameraCompat;->applyHHT(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method private applyHdrParameter(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 11
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportHdr"
        type = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "requestBuilder",
            "requestIndex"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v0}, Lcom/android/camera2/CaptureResultParser;->getHdrCapturePreCollectEnable(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v0

    iget v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    if-gt p2, v1, :cond_2c

    if-eqz v0, :cond_1

    array-length v1, v0

    if-le v1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "wrong HdrCapturePreCollectEnable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    add-int/lit8 v1, p2, 0x1

    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameIndex(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    iget v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameCount(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspFrameIndex(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    iget v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspFrameCount(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    aget v1, v1, p2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    iget-boolean v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrBokeh:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    if-gez v1, :cond_3

    move v3, v4

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    int-to-byte v3, v3

    invoke-static {p1, v3}, Lcom/android/camera2/compat/MiCameraCompat;->applyHdrBracketMode(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    goto :goto_3

    :cond_4
    invoke-static {p1, v4}, Lcom/android/camera2/compat/MiCameraCompat;->applyHdrBracketMode(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    :goto_3
    iget v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    const/16 v5, 0x14

    if-ne v3, v5, :cond_5

    invoke-static {p1, v4}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    goto :goto_4

    :cond_5
    iget v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-static {p1, v3}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    :goto_4
    iget-object v3, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v3}, Lcom/android/camera2/CaptureResultParser;->isZslHdrEnabled(Landroid/hardware/camera2/CaptureResult;)Z

    move-result v3

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0o;->OooOOoo()Z

    move-result v6

    if-eqz v6, :cond_6

    if-eqz v3, :cond_7

    :cond_6
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v6

    invoke-virtual {v6}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0OO0Ooo()Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_7
    invoke-static {p1, v4}, Lcom/android/camera2/CaptureRequestBuilder;->applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_8

    :cond_8
    if-eqz v3, :cond_c

    if-nez p2, :cond_9

    move v3, v4

    goto :goto_5

    :cond_9
    move v3, v2

    :goto_5
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0o;->OooOOoo()Z

    move-result v6

    if-eqz v6, :cond_b

    if-nez v3, :cond_a

    goto :goto_6

    :cond_a
    move v3, v2

    goto :goto_7

    :cond_b
    :goto_6
    move v3, v4

    :goto_7
    invoke-static {p1, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_c
    :goto_8
    iget v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerSceneType:I

    if-nez v3, :cond_e

    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->getHDRMsnrType(Lcom/android/camera2/CameraCapabilities;)B

    move-result v3

    if-ne v3, v4, :cond_e

    if-nez p2, :cond_d

    move v3, v4

    goto :goto_9

    :cond_d
    move v3, v2

    :goto_9
    invoke-static {p1, v3}, Lcom/android/camera2/compat/MiCameraCompat;->applyNoiseReduction(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_e
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v3, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    if-eqz v0, :cond_f

    sget-object v3, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->CAPTURE_PRECOLLECT_ENABLE:Lcom/android/camera2/vendortag/VendorTag;

    aget v0, v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v3, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->setValueSafely(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    :cond_f
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerSceneType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerAdrc:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1, v0, v3}, Lcom/android/camera2/compat/MiCameraCompat;->applyHdrParameter(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMiHDRSR(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mZslHdrEnabled:Z

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyZslHdrEnabled(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportSnapshotReqInfo(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSnapshotReqInfo:[B

    if-eqz v0, :cond_10

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applySnapshotReqInfo(Landroid/hardware/camera2/CaptureRequest$Builder;[B)V

    :cond_10
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v0

    invoke-virtual {v0}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0OOO00o()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCaptureRequestSettings:[I

    if-nez v0, :cond_11

    if-nez v1, :cond_14

    :goto_a
    move v0, v4

    goto :goto_b

    :cond_11
    aget v0, v0, p2

    if-ne v0, v4, :cond_14

    goto :goto_a

    :cond_12
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v0

    invoke-virtual {v0}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00oooOo()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCaptureRequestSettings:[I

    if-nez v0, :cond_13

    if-nez v1, :cond_14

    goto :goto_a

    :cond_13
    aget v0, v0, p2

    if-ne v0, v4, :cond_14

    goto :goto_a

    :cond_14
    move v0, v2

    :goto_b
    iget v3, p0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    const/4 v6, 0x4

    if-ne v3, v4, :cond_15

    :goto_c
    move v3, v4

    goto :goto_d

    :cond_15
    const/4 v7, 0x2

    if-ne v3, v7, :cond_16

    goto :goto_c

    :cond_16
    const/4 v7, 0x3

    if-ne v3, v7, :cond_17

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v3

    invoke-virtual {v3}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0O()Z

    move-result v3

    goto :goto_d

    :cond_17
    if-ne v3, v6, :cond_18

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v3

    invoke-virtual {v3}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->oo0ooO()Z

    move-result v3

    goto :goto_d

    :cond_18
    const/4 v7, -0x1

    if-ne v3, v7, :cond_1a

    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->getCameraId(Lcom/android/camera2/CameraCapabilities;)I

    move-result v3

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v7

    if-eq v3, v7, :cond_19

    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->getCameraId(Lcom/android/camera2/CameraCapabilities;)I

    move-result v3

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v7

    if-ne v3, v7, :cond_1a

    :cond_19
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v3

    invoke-virtual {v3}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00oooOo()Z

    move-result v3

    goto :goto_d

    :cond_1a
    move v3, v2

    :goto_d
    iget-object v7, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v7}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v7

    invoke-static {v7}, Lcom/android/camera2/CameraCapabilitiesUtil;->getCameraId(Lcom/android/camera2/CameraCapabilities;)I

    move-result v7

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getFrontCameraId()I

    move-result v8

    if-eq v7, v8, :cond_1c

    iget-object v7, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v7}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v7

    invoke-static {v7}, Lcom/android/camera2/CameraCapabilitiesUtil;->getCameraId(Lcom/android/camera2/CameraCapabilities;)I

    move-result v7

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxFrontCameraId()I

    move-result v8

    if-ne v7, v8, :cond_1b

    goto :goto_e

    :cond_1b
    move v7, v2

    goto :goto_f

    :cond_1c
    :goto_e
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v7

    invoke-virtual {v7}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->oo0o0O0()Z

    move-result v7

    :goto_f
    const-string v8, "ShotParallelBurst"

    if-eqz v0, :cond_1d

    iget-object v9, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v9}, Lcom/android/camera2/Camera2Proxy;->isFixShotTime()Z

    move-result v9

    if-eqz v9, :cond_1d

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v9

    invoke-virtual {v9}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0OOoo()Z

    move-result v9

    if-eqz v9, :cond_1d

    iget-object v9, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v9}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera2/CameraConfigs;->isMfHdrQuickShotEnabled()Z

    move-result v9

    if-eqz v9, :cond_1d

    new-array v0, v2, [Ljava/lang/Object;

    const-string v9, "Mfhdr quickshot enabled\uff0cdisable mfnr"

    invoke-static {v8, v9, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    :cond_1d
    iget-object v9, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v9}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v9, v10}, Lcom/android/camera2/CaptureResultParser;->isDisableMfnrForMfnrHDR(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureResult;)Z

    move-result v9

    if-nez v9, :cond_22

    if-eqz v0, :cond_1e

    if-eqz v3, :cond_1e

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->isIn3OrMoreSatMode()Z

    move-result v9

    if-eqz v9, :cond_1e

    iget v9, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    if-ge v9, v6, :cond_1e

    goto :goto_10

    :cond_1e
    if-eqz v0, :cond_1f

    if-eqz v7, :cond_1f

    iget v7, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    if-gt v7, v6, :cond_1f

    goto :goto_10

    :cond_1f
    iget-boolean v6, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSingleCaptureForHDRplusMFNR:Z

    if-eqz v6, :cond_20

    :goto_10
    move v0, v4

    goto :goto_11

    :cond_20
    if-eqz v0, :cond_21

    if-eqz v3, :cond_21

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v3

    invoke-virtual {v3}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00oooOo()Z

    move-result v3

    if-eqz v3, :cond_21

    goto :goto_10

    :cond_21
    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrBokeh:Z

    if-eqz v0, :cond_22

    goto :goto_10

    :cond_22
    move v0, v2

    :goto_11
    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyHdrParameter enable mfnr EV = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1, v4}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_12

    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyHdrParameter disable mfnr EV = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :goto_12
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportHdrBokeh(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrBokeh:Z

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyHdrBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_24
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v0

    invoke-virtual {v0}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0Oo00o()Z

    move-result v0

    if-eqz v0, :cond_28

    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspFrameCount(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspFrameIndex(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    const/16 v1, 0x138f

    const/16 v3, 0x138d

    if-ne v5, v0, :cond_26

    new-array v0, v2, [Ljava/lang/Object;

    const-string v5, "enable isp tuning capture hint for HDR reprocess"

    invoke-static {v8, v5, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1, v4}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspPackedRawSupport(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    invoke-static {p1, v4}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspMetaType(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    invoke-static {p1, v4}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspPackedRawEnable(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrType:I

    if-ne v0, v4, :cond_25

    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspTuningHint(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    goto :goto_13

    :cond_25
    invoke-static {p1, v3}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspTuningHint(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    goto :goto_13

    :cond_26
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrType:I

    if-nez v0, :cond_27

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "enable isp tuning capture hint for HDR"

    invoke-static {v8, v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1, v3}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspTuningHint(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    goto :goto_13

    :cond_27
    if-ne v0, v4, :cond_28

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "enable isp tuning capture hint for LLHDR"

    invoke-static {v8, v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspTuningHint(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    :cond_28
    :goto_13
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getExposureCompensationIndex()I

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_14

    :cond_29
    move v4, v2

    :goto_14
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v0

    invoke-virtual {v0}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->OooOO0o()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v0

    invoke-virtual {v0}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->OooOO0O()Z

    move-result v0

    if-eqz v0, :cond_2a

    if-eqz v4, :cond_2a

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "prepareHDR: if ev changed needed set HDR false "

    invoke-static {v8, v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "applyHdrParameter:applyHDR is false since ev changed!"

    invoke-static {v8, v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyHDR(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_2a
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v0

    invoke-virtual {v0}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0OOo0o0()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->isHdrDegradeMFNREnabled()Z

    move-result v0

    if-eqz v0, :cond_2b

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "prepareHDR: if isHdrDegradeMFNREnabled needed set HDR false "

    invoke-static {v8, v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyHDR(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspTuningHint(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    :cond_2b
    invoke-direct {p0, p1, p2}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->disableRtStreamTargetForHDRIfNeed(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void

    :cond_2c
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "wrong request index "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private applyPureViewParameter(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 5
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportMotionCaptureType"
        type = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "requestBuilder",
            "requestIndex"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getMotionCaptureType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    sget-object v1, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->ANCHOR_FRAME_TIMESTAMP:Lcom/android/camera2/vendortag/VendorTag;

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->setValueSafely(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyPureViewParameter mSequenceNum:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " capture type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "ShotParallelBurst"

    invoke-static {v4, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    add-int/2addr p2, v1

    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameIndex(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    iget p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameCount(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-static {p1, p0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyPureViewEnabled(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applySwMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applySuperResolution(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    sget-object p0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->XIAOMI_MOTION_CAPTURE_TYPE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lcom/android/camera2/vendortag/VendorTagHelper;->setValueQuietly(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    return-void
.end method

.method private applySuperNightParameter(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 8
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportedSuperNightScene"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "requestBuilder",
            "requestIndex"
        }
    .end annotation

    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    if-gt p2, v0, :cond_c

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSuperNightValue:Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    invoke-virtual {v3}, Lcom/android/camera2/vendortag/struct/SuperNightEvValue;->getValue()[I

    move-result-object v3

    aget v3, v3, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "applySuperNightParameter: request[%d].ev = %d"

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    const-string v6, "ShotParallelBurst"

    invoke-static {v6, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0o;->OooOOoo()Z

    move-result v2

    if-nez v2, :cond_1

    sget-boolean v2, LOooO0OO/OooO0oO/OooO00o/OooO0o;->OooOooO:Z

    if-nez v2, :cond_1

    sget-boolean v2, LOooO0OO/OooO0oO/OooO00o/OooO0o;->OooOooo:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-boolean v2, LOooO0OO/OooO0oO/OooO00o/OooO0o;->OooOo:Z

    if-nez v2, :cond_2

    invoke-static {p1, v5}, Lcom/android/camera2/compat/MiCameraCompat;->applyHdrBracketMode(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p1, v5}, Lcom/android/camera2/CaptureRequestBuilder;->applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_2
    :goto_1
    iget v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    invoke-static {v2}, Lcom/xiaomi/camera/base/Constants;->isMTKRawSuperNight(I)Z

    move-result v2

    const/16 v3, 0xa

    if-eqz v2, :cond_4

    new-array v0, v4, [Ljava/lang/Object;

    const-string v2, "apply raw super night params"

    invoke-static {v6, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSuperNightValue:Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    invoke-virtual {v2}, Lcom/android/camera2/vendortag/struct/SuperNightEvValue;->getValue()[I

    move-result-object v2

    aget v2, v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-static {p1, v5}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspMetaType(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    invoke-static {p1, v5}, Lcom/android/camera2/compat/MiCameraCompat;->applySuperNightRawEnabled(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {p1, v5}, Lcom/android/camera2/compat/MiCameraCompat;->applyMtkProcessRaw(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    const/16 v0, 0x1390

    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSuperNightAepLineValue:[I

    if-eqz v2, :cond_3

    array-length v7, v2

    if-lt v7, v1, :cond_3

    aget v1, v2, v4

    if-ne v1, v5, :cond_3

    aget v0, v2, v5

    :cond_3
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspTuningHint(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_7

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "disable zsl for supernight se"

    invoke-static {v6, v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v7, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSuperNightValue:Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    invoke-virtual {v7}, Lcom/android/camera2/vendortag/struct/SuperNightEvValue;->getValue()[I

    move-result-object v7

    aget v7, v7, p2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v2, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/16 v2, 0x10

    iget v7, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mRawCallbackType:I

    if-ne v2, v7, :cond_7

    sget-object v2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MIVI_SUPER_NIGHT_MODE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->isNightMotionEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mNightMotionMode:I

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMiviNightMotionMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    invoke-static {p1, v4}, Lcom/android/camera2/compat/MiCameraCompat;->applyMiviSuperNightMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v3, v7, :cond_7

    :cond_6
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "force set mivi super night mode from %d to %d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1, v5}, Lcom/android/camera2/compat/MiCameraCompat;->applyMiviSuperNightMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    :cond_7
    :goto_2
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    invoke-static {p1, v4}, Lcom/android/camera2/compat/MiCameraCompat;->applySwMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {p1, v4}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    add-int/lit8 v0, p2, 0x1

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameIndex(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameCount(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportSuperNightMfnr(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSuperNightValue:Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/struct/SuperNightEvValue;->getValue()[I

    move-result-object v0

    aget v0, v0, p2

    if-nez v0, :cond_8

    invoke-static {p1, v4}, Lcom/android/camera2/compat/MiCameraCompat;->applySuperNightScene(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {p1, v5}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {p1, v5}, Lcom/android/camera2/compat/MiCameraCompat;->applySuperNightMfnr(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getMiviSuperNightData()Lcom/android/camera2/vendortag/struct/MiviSuperNightData;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isSkipPreviewBufferSupported()Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz p2, :cond_a

    :cond_9
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->isNightMotionEnabled()Z

    move-result p2

    if-eqz p2, :cond_b

    :cond_a
    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object p0

    iget-object p0, p0, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    if-eqz p0, :cond_b

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    new-array p0, v4, [Ljava/lang/Object;

    const-string p1, "Remove preview surface required for night capture"

    invoke-static {v6, p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    return-void

    :cond_c
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "wrong request index "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private applySuperResolutionParameter(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 6
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportSuperResolution"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "requestBuilder",
            "requestIndex"
        }
    .end annotation

    add-int/lit8 v0, p2, 0x1

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameIndex(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameCount(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyHDR(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applySuperResolution(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSnapParam:Lcom/android/camera2/SnapParam;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/camera2/SnapParam;->getParam()Lcom/android/camera2/SnapParam$Param;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/camera2/SnapParam$Param;->isLiveShotOn:Z

    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyLiveShot(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    :cond_0
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v3

    invoke-virtual {v3}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0OO0()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-static {p1, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {p1, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAWBLock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_2
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0o;->OooOOoo()Z

    move-result v2

    const-string v3, "ShotParallelBurst"

    if-eqz v2, :cond_3

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v2

    invoke-virtual {v2}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0Oo00o()Z

    move-result v2

    if-eqz v2, :cond_3

    new-array v2, v0, [Ljava/lang/Object;

    const-string v4, "enable isp tuning capture hint for MFSR"

    invoke-static {v3, v4, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v2, 0x138e

    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspTuningHint(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyNoiseReduction(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyHighQualityReprocess(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    iget v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspFrameCount(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspFrameIndex(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    :cond_3
    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrSR:Z

    if-eqz v2, :cond_7

    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyMiHDRSR(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyHDR(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    aget v2, v2, p2

    iget v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mBaseEvValue:I

    if-ne v2, v4, :cond_5

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v2

    invoke-virtual {v2}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00OoO0o()Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iget v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mNbrOfNonBaseEVs:I

    sub-int/2addr v2, v4

    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    :cond_4
    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applySuperResolution(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_0

    :cond_5
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v2

    invoke-virtual {v2}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00OoO0o()Z

    move-result v2

    if-nez v2, :cond_6

    iget v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mNbrOfNonBaseEVs:I

    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    :cond_6
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applySuperResolution(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :goto_0
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    iget-object v5, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    aget v5, v5, p2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "HdrSrEv[%d]=%d"

    invoke-static {v2, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    aget v2, v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyHdrBracketMode(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    goto :goto_1

    :cond_7
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMiHDRSR(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->removeRtStreamTargetForSrIfNeed(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method private checkAnchorFrameLegacy()Z
    .locals 4

    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    const-string v0, "ShotParallelBurst"

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p0, v2, :cond_0

    new-array p0, v1, [Ljava/lang/Object;

    const-string v2, "legacy SR disable anchor frame"

    invoke-static {v0, v2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    const/4 v2, 0x1

    if-ne p0, v2, :cond_1

    new-array p0, v1, [Ljava/lang/Object;

    const-string v1, "legacy HDR enable anchor frame"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_1
    const/16 v3, 0xa

    if-eq p0, v3, :cond_4

    const/16 v3, 0xc

    if-ne p0, v3, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0xf

    if-ne p0, v0, :cond_3

    return v1

    :cond_3
    return v2

    :cond_4
    :goto_0
    new-array p0, v1, [Ljava/lang/Object;

    const-string v2, "legacy super night disable anchor frame"

    invoke-static {v0, v2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method private checkHdrLegacy(Lcom/android/camera2/CameraConfigs;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "configs",
            "hdsrStatus"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->isBokehEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrBokeh:Z

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getExposureCompensationIndex()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v3

    invoke-virtual {v3}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->OooOO0O()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getHDRStatus()Lcom/android/camera2/Camera2Proxy$HDRStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy$HDRStatus;->isSuperResolutionHDR()Z

    move-result p1

    if-eqz p1, :cond_2

    if-ne p2, v2, :cond_2

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "ShotParallelBurst"

    const-string v1, "prepare: HdrSR"

    invoke-static {p2, v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x3

    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    xor-int/lit8 p1, v0, 0x1

    iput-boolean p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrSR:Z

    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->prepareSR(Z)V

    goto :goto_2

    :cond_2
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p1

    invoke-virtual {p1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0OooOo()Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 v2, 0x14

    :cond_3
    iput v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->prepareHdr()V

    :goto_2
    return-void
.end method

.method private disableRtStreamTargetForHDRIfNeed(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 6
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isDisableRtStreamForHDRRequired"
        type = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "captureRequestBuilder",
            "requestIndex"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "ShotParallelBurst"

    if-nez p1, :cond_0

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "disableRtStreamTargetForHDRIfNeed: captureRequestBuilder NULL!!"

    invoke-static {v1, p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isDisableRtStreamForHDRRequired(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v3

    if-nez v3, :cond_1

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "disableRtStreamTargetForHDRIfNeed: checkNeedDisableRtStreamForHDR false"

    invoke-static {v1, p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewImageReader:Landroid/media/ImageReader;

    if-eqz v3, :cond_2

    new-array v4, v0, [Ljava/lang/Object;

    const-string v5, "disableRtStreamTargetForHDRIfNeed: disable QR stream"

    invoke-static {v1, v5, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    :cond_2
    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isDisableRtStreamForHDRAllFrame(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object p0

    iget-object p0, p0, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    if-eqz p0, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableRtStreamTargetForHDRIfNeed: disable realtime stream,requestIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    :cond_3
    return-void

    :cond_4
    iget-object v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    if-eqz v3, :cond_9

    array-length v3, v3

    if-gt v3, p2, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isDisableRtStreamForHDROnlyFistFrame(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    aget p2, v2, p2

    if-eqz p2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableRtStreamTargetForHDRIfNeed: EV not 0 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsAddTargetPreviewSurface:Z

    if-eqz p2, :cond_6

    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object p0

    iget-object p0, p0, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_6
    return-void

    :cond_7
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsAddTargetPreviewSurface:Z

    if-eqz p0, :cond_8

    if-eqz v2, :cond_8

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableRtStreamTargetForHDRIfNeed: disable realtime stream, ev : "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v1, p0, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    :cond_8
    return-void

    :cond_9
    :goto_0
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "disableRtStreamTargetForHDRIfNeed: mHdrCheckerEvValue exception!"

    invoke-static {v1, p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private doAnchorFrameAsThumbnail()Z
    .locals 9

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isModuleAnchorFrame()Z

    move-result v0

    const-string v1, "ShotParallelBurst"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array p0, v2, [Ljava/lang/Object;

    const-string v0, "anchor frame do not enable"

    invoke-static {v1, v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->isNeedFlash()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v3

    invoke-virtual {v3}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0OoOO00()Z

    move-result v3

    if-eqz v3, :cond_2

    new-array p0, v2, [Ljava/lang/Object;

    const-string v0, "flash disable anchor"

    invoke-static {v1, v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_2
    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getAnchorFrameMask()I

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->checkAnchorFrameLegacy()Z

    move-result p0

    return p0

    :cond_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0o;->OooOOoo()Z

    move-result v5

    xor-int/2addr v5, v4

    iget v6, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    const/16 v7, 0xf

    const/16 v8, 0xc

    if-ne v6, v7, :cond_4

    invoke-static {v0, v3, v8}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAnchorFrameType(Lcom/android/camera2/CameraCapabilities;II)Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "super night se anchor frame "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0

    :cond_4
    const/4 v7, 0x3

    if-ne v6, v7, :cond_5

    const/4 p0, 0x2

    invoke-static {v0, v3, p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAnchorFrameType(Lcom/android/camera2/CameraCapabilities;II)Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SR anchor frame "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0

    :cond_5
    if-eq v6, v4, :cond_c

    const/16 v4, 0x14

    if-ne v6, v4, :cond_6

    goto/16 :goto_2

    :cond_6
    const/16 v4, 0xa

    if-eq v6, v4, :cond_a

    if-ne v6, v8, :cond_7

    goto :goto_0

    :cond_7
    const/16 v7, 0x11

    if-ne v6, v7, :cond_8

    const/16 p0, 0x64

    invoke-static {v0, v3, p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAnchorFrameType(Lcom/android/camera2/CameraCapabilities;II)Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cup capture anchor frame "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0

    :cond_8
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0o;->OooOOoo()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsSatFusionShot:Z

    if-eqz p0, :cond_9

    invoke-static {v0, v3, v4}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAnchorFrameType(Lcom/android/camera2/CameraCapabilities;II)Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "back fusion anchor frame "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0

    :cond_9
    new-array p0, v2, [Ljava/lang/Object;

    const-string v0, "default anchor frame true"

    invoke-static {v1, v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :cond_a
    :goto_0
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->isNightMotionEnabled()Z

    move-result p0

    if-eqz p0, :cond_b

    const/16 p0, 0xb

    goto :goto_1

    :cond_b
    const/4 p0, 0x6

    :goto_1
    invoke-static {v0, v3, p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAnchorFrameType(Lcom/android/camera2/CameraCapabilities;II)Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "super night anchor frame "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0

    :cond_c
    :goto_2
    if-nez v3, :cond_d

    const/4 p0, 0x5

    invoke-static {v0, v3, p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAnchorFrameType(Lcom/android/camera2/CameraCapabilities;II)Z

    move-result p0

    goto :goto_3

    :cond_d
    const/16 p0, 0x66

    invoke-static {v0, v3, p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAnchorFrameType(Lcom/android/camera2/CameraCapabilities;II)Z

    move-result p0

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HDR anchor frame "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method

.method private fillOtherHdrParam()V
    .locals 5

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSnapParam:Lcom/android/camera2/SnapParam;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget-boolean v1, v0, Lcom/android/camera2/SnapParam$Param;->singleCaptureForHDRplusMFNR:Z

    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSingleCaptureForHDRplusMFNR:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareHDR: singleFrameHDR = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSingleCaptureForHDRplusMFNR:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "ShotParallelBurst"

    invoke-static {v4, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v1, v0, Lcom/android/camera2/SnapParam$Param;->isZslHDR:Z

    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mZslHdrEnabled:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareHDR: isZslHdrEnable = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mZslHdrEnabled:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v4, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/camera2/SnapParam$Param;->hdrCaptureRequestSettings:[I

    iput-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCaptureRequestSettings:[I

    iget v1, v0, Lcom/android/camera2/SnapParam$Param;->sequenceNum:I

    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iget v1, v0, Lcom/android/camera2/SnapParam$Param;->multiFrameNum:I

    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    iget-object v1, v0, Lcom/android/camera2/SnapParam$Param;->evValues:[I

    iput-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    iget v1, v0, Lcom/android/camera2/SnapParam$Param;->hdrType:I

    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrType:I

    iget v1, v0, Lcom/android/camera2/SnapParam$Param;->hdrCheckerSceneType:I

    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerSceneType:I

    iget v1, v0, Lcom/android/camera2/SnapParam$Param;->hdrCheckerAdrc:I

    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerAdrc:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareHdr: scene = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerSceneType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",adrc = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerAdrc:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",EvValue = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    if-eqz v3, :cond_1

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v1, v0, Lcom/android/camera2/SnapParam$Param;->baseEvValue:I

    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mBaseEvValue:I

    iget v1, v0, Lcom/android/camera2/SnapParam$Param;->numOfNonBaseEvs:I

    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mNbrOfNonBaseEVs:I

    invoke-static {v0}, Lcom/android/camera2/SnapParam;->checkMultiFrameFusion(Lcom/android/camera2/SnapParam$Param;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsSatFusionShot:Z

    iget-object v1, v0, Lcom/android/camera2/SnapParam$Param;->fusionType:LOooO0Oo/OooO0OO;

    iput-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSatFusionType:LOooO0Oo/OooO0OO;

    iget-object v0, v0, Lcom/android/camera2/SnapParam$Param;->snapshotReqInfo:[B

    iput-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSnapshotReqInfo:[B

    return-void
.end method

.method private getHDSRStates()I
    .locals 3

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getThresholdZoomValue(Lcom/android/camera2/CameraCapabilities;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getZoomRatio()F

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/android/camera/Util;->isInSRZoomRatioTheInterval(Lcom/android/camera2/Camera2Proxy;Ljava/util/HashMap;F)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v0}, Lcom/android/camera2/CaptureResultParser;->getHdrDetectedScene(Landroid/hardware/camera2/CaptureResult;)I

    move-result v0

    if-eq v0, v1, :cond_2

    :cond_0
    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {p0}, Lcom/android/camera2/CaptureResultParser;->getHdrSrDetectedScene(Landroid/hardware/camera2/CaptureResult;)I

    move-result p0

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private initFeatureSetting()V
    .locals 9

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "ShotParallelBurst"

    const-string v3, "initFeatureSetting: E"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getSensorRawImageSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->getOutputSize()Lcom/android/camera/CameraSize;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initFeatureSetting: rawInputSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", yuvInputSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v4}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera2/CameraConfigs;->getOutputSize()Lcom/android/camera/CameraSize;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v5

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v5

    :goto_0
    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v6

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v6

    :goto_1
    invoke-virtual {v3}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v7

    if-ne v5, v7, :cond_2

    invoke-virtual {v3}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v7

    if-eq v6, v7, :cond_3

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initFeatureSetting: outputSize = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v7, v0, [Ljava/lang/Object;

    invoke-static {v2, v4, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    new-instance v4, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    iget-object v7, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v7}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera2/CameraConfigs;->getPhotoFormat()I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;-><init>(III)V

    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v5

    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    if-eqz v5, :cond_4

    if-eqz p0, :cond_4

    new-instance v6, Lcom/xiaomi/camera/isp/IspInterfaceIO;

    new-instance v7, Landroid/util/Size;

    invoke-virtual {v3}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v8

    invoke-virtual {v3}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v3

    invoke-direct {v7, v8, v3}, Landroid/util/Size;-><init>(II)V

    new-instance v3, Landroid/util/Size;

    invoke-virtual {v1}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v8

    invoke-virtual {v1}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v1

    invoke-direct {v3, v8, v1}, Landroid/util/Size;-><init>(II)V

    invoke-direct {v6, v7, v3, v4}, Lcom/xiaomi/camera/isp/IspInterfaceIO;-><init>(Landroid/util/Size;Landroid/util/Size;Lcom/xiaomi/camera/imagecodec/OutputConfiguration;)V

    invoke-static {p0}, Lcom/xiaomi/camera/base/CameraDeviceUtil;->getNativeMetadata(Landroid/hardware/camera2/CaptureResult;)Landroid/os/Parcelable;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v5, v6, p0, v1, v0}, Lcom/android/camera/LocalParallelService$LocalBinder;->queryFeatureSetting(Lcom/xiaomi/camera/isp/IspInterfaceIO;Landroid/os/Parcelable;Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;Z)Lcom/xiaomi/camera/imagecodec/FeatureSetting;

    :cond_4
    new-array p0, v0, [Ljava/lang/Object;

    const-string v0, "initFeatureSetting: X"

    invoke-static {v2, v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private isMTKRawSuperNightCallback(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rawCallback"
        }
    .end annotation

    and-int/lit8 p0, p1, 0x28

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isNeedPreviewImageReader()Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2Shot;->mAnchorFrame:Z

    const/16 v1, 0x14

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isDefinedSnapshotQuickviewStreamMask(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-eq v0, v3, :cond_0

    if-ne v1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isHDRModeSupportSnapshotQuickviewStream(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    :cond_1
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-ne v0, v2, :cond_7

    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSRModeSupportSnapshotQuickviewStream(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_7

    return v3

    :cond_2
    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2Shot;->mAnchorFrame:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMtkIsp7(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-nez v0, :cond_3

    return v3

    :cond_3
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0o;->OooOOoo()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-eq v0, v3, :cond_4

    if-ne v1, v0, :cond_5

    :cond_4
    return v3

    :cond_5
    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    const/16 v0, 0x11

    if-ne p0, v0, :cond_6

    return v3

    :cond_6
    const/16 v0, 0x12

    if-ne p0, v0, :cond_7

    return v3

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method private isNightMotionEnabled()Z
    .locals 0

    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mNightMotionMode:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$prepareSR$0(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "ev"
        }
    .end annotation

    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mBaseEvValue:I

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private prepareClearShot()V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "!isHALEnableFrontMFNR"
        type = 0x0
    .end annotation

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    return-void
.end method

.method private prepareHHT(Ljava/lang/Integer;)V
    .locals 5
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportHHTAlgo"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iso"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "ShotParallelBurst"

    if-nez p1, :cond_0

    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "iso null, switch to quick shot hht(1 -> 1)"

    invoke-static {v3, p1, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v4}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera2/CameraConfigs;->isAiASDEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v4

    invoke-virtual {v4}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0OOo0oo()I

    move-result v4

    if-ge p1, v4, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/LocalParallelService$LocalBinder;->getParallelTaskNum()I

    move-result p1

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v4

    invoke-virtual {v4}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0oOo0o0()I

    move-result v4

    if-lt p1, v4, :cond_1

    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    new-array p0, v2, [Ljava/lang/Object;

    const-string/jumbo p1, "switch to quick shot hht(1 -> 1)"

    invoke-static {v3, p1, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1
    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->isAiASDEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getBeautyValues()Lcom/android/camera/fragment/beauty/BeautyValues;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getBeautyValues()Lcom/android/camera/fragment/beauty/BeautyValues;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/beauty/BeautyValues;->isSmoothLevelOn()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/LocalParallelService$LocalBinder;->isIdle()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x3

    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    new-array p0, v2, [Ljava/lang/Object;

    const-string/jumbo p1, "switch to quick shot hht(3 -> 1)"

    invoke-static {v3, p1, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureResultParser;->getHHTFrameNumber(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureResult;)I

    move-result p1

    if-lez p1, :cond_3

    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getHHTFrameNumber hht("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " -> 1)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x5

    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "default hht(5 -> 1)"

    invoke-static {v3, p1, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private prepareHdr()V
    .locals 7
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportHdr"
        type = 0x2
    .end annotation

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1, v0}, Lcom/android/camera2/MiCamera2;->useSingleCaptureForHdrPlusMfnr(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSingleCaptureForHDRplusMFNR:Z

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getExposureCompensationIndex()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v3

    invoke-virtual {v3}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->OooOO0O()Z

    move-result v3

    const-string v4, "ShotParallelBurst"

    if-eqz v3, :cond_1

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v3

    invoke-virtual {v3}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0OOo0o0()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/Camera2Proxy;->isHdrDegradeMFNREnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    new-array v3, v2, [Ljava/lang/Object;

    const-string v5, "prepareHDR: user mfnr capture since ev changed or support HdrDegradeMFNR! "

    invoke-static {v4, v5, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSingleCaptureForHDRplusMFNR:Z

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepareHDR: singleFrameHDR = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSingleCaptureForHDRplusMFNR:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v3, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v3}, Lcom/android/camera2/CaptureResultParser;->isZslHdrEnabled(Landroid/hardware/camera2/CaptureResult;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mZslHdrEnabled:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepareHDR: isZslHdrEnable = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mZslHdrEnabled:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v3, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v3}, Lcom/android/camera2/CaptureResultParser;->getHdrCaptureRequestSettings(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepareHDR: requestSettings = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v5, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSingleCaptureForHDRplusMFNR:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    iput-object v6, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCaptureRequestSettings:[I

    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v3

    invoke-virtual {v3}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->OooOO0O()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    new-array v0, v1, [I

    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getExposureCompensationIndex()I

    move-result v1

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    goto :goto_2

    :cond_4
    new-array v0, v1, [I

    aput v2, v0, v2

    iput-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v0}, Lcom/android/camera2/CaptureResultParser;->getHdrCheckerValues(Landroid/hardware/camera2/CaptureResult;)[B

    move-result-object v0

    new-instance v1, Lcom/android/camera2/vendortag/struct/HdrEvValue;

    invoke-direct {v1, v0}, Lcom/android/camera2/vendortag/struct/HdrEvValue;-><init>([B)V

    invoke-virtual {v1}, Lcom/android/camera2/vendortag/struct/HdrEvValue;->getHdrType()I

    move-result v0

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrType:I

    invoke-virtual {v1}, Lcom/android/camera2/vendortag/struct/HdrEvValue;->getSequenceNum()I

    move-result v0

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    invoke-virtual {v1}, Lcom/android/camera2/vendortag/struct/HdrEvValue;->getHdrCheckerEvValue()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    if-eqz v3, :cond_7

    array-length v1, v3

    array-length v0, v0

    if-ge v1, v0, :cond_6

    goto :goto_1

    :cond_6
    iput-object v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCaptureRequestSettings:[I

    goto :goto_2

    :cond_7
    :goto_1
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "prepareHDR: illegal hdr settings"

    invoke-static {v4, v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v6, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCaptureRequestSettings:[I

    :goto_2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v0}, Lcom/android/camera2/CaptureResultParser;->getHdrCheckerSceneType(Landroid/hardware/camera2/CaptureResult;)I

    move-result v0

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerSceneType:I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v0}, Lcom/android/camera2/CaptureResultParser;->getHdrCheckerAdrc(Landroid/hardware/camera2/CaptureResult;)I

    move-result v0

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerAdrc:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareHdr: scene = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerSceneType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",adrc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerAdrc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",EvValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    if-eqz p0, :cond_8

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    :cond_8
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v4, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private preparePurePreview()V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isAiShutterDenoiseEnable"
        type = 0x2
    .end annotation

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    return-void
.end method

.method private prepareSR(Z)V
    .locals 8
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportSuperResolution"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isCheckerHdrSr"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "ShotParallelBurst"

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v3}, Lcom/android/camera2/CaptureResultParser;->getHdrCaptureRequestSettings(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepareSR: hdr settings = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v4}, Lcom/android/camera2/CaptureResultParser;->getHdrCheckerValues(Landroid/hardware/camera2/CaptureResult;)[B

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v5}, Lcom/android/camera2/CaptureResultParser;->getHdrSrRequestExpandRules(Landroid/hardware/camera2/CaptureResult;)[B

    move-result-object v5

    if-eqz v5, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "prepareSR: evExpandRules ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v1, v6, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "prepareSR: no evExpandRules"

    invoke-static {v1, v7, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    new-instance v6, Lcom/android/camera2/vendortag/struct/HdrEvValue;

    invoke-direct {v6, v4, p1, v5}, Lcom/android/camera2/vendortag/struct/HdrEvValue;-><init>([BZ[B)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepareSR: hdr ev values = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, p1, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/android/camera2/vendortag/struct/HdrEvValue;->getSequenceNum()I

    move-result p1

    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-virtual {v6}, Lcom/android/camera2/vendortag/struct/HdrEvValue;->getHdrCheckerEvValue()[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    if-eqz v3, :cond_2

    array-length v4, v3

    array-length p1, p1

    if-ge v4, p1, :cond_1

    goto :goto_1

    :cond_1
    iput-object v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCaptureRequestSettings:[I

    goto :goto_2

    :cond_2
    :goto_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string v3, "prepareSR: illegal hdr settings"

    invoke-static {v1, v3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCaptureRequestSettings:[I

    :goto_2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    aget v1, p1, v2

    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mBaseEvValue:I

    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p1

    new-instance v1, LOooO0OO/OooO0O0/OooO0O0/o000OOo0;

    invoke-direct {v1, p0}, LOooO0OO/OooO0O0/OooO0O0/o000OOo0;-><init>(Lcom/android/camera2/MiCamera2ShotParallelBurst;)V

    invoke-interface {p1, v1}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->count()J

    move-result-wide v1

    long-to-int p1, v1

    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mNbrOfNonBaseEVs:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    goto/16 :goto_4

    :cond_3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSatFusionType:LOooO0Oo/OooO0OO;

    invoke-virtual {p1}, LOooO0Oo/OooO0OO;->OooO0o()I

    move-result p1

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-eq p1, v3, :cond_5

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSatFusionType:LOooO0Oo/OooO0OO;

    invoke-virtual {p1}, LOooO0Oo/OooO0OO;->OooO0o()I

    move-result p1

    if-ne p1, v4, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p1

    invoke-virtual {p1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0000ooO()I

    move-result p1

    const-string v0, "camera.sr.framecount"

    invoke-static {v0, p1}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "prepareSR: captureNum="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_5
    :goto_3
    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsSatFusionShot:Z

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSatFusionType:LOooO0Oo/OooO0OO;

    invoke-virtual {p1}, LOooO0Oo/OooO0OO;->OooO00o()I

    move-result p1

    const-string v3, "prepareFusion: captureNum = "

    if-ne p1, v4, :cond_6

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSatFusionType:LOooO0Oo/OooO0OO;

    invoke-virtual {p1}, LOooO0Oo/OooO0OO;->OooO0Oo()I

    move-result p1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSatFusionType:LOooO0Oo/OooO0OO;

    invoke-virtual {v0}, LOooO0Oo/OooO0OO;->OooO0o0()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSatFusionType:LOooO0Oo/OooO0OO;

    invoke-virtual {p1}, LOooO0Oo/OooO0OO;->OooO00o()I

    move-result p1

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSatFusionType:LOooO0Oo/OooO0OO;

    invoke-virtual {p1}, LOooO0Oo/OooO0OO;->OooO0Oo()I

    move-result p1

    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "prepareFusion: unknown type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSatFusionType:LOooO0Oo/OooO0OO;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_4
    return-void
.end method

.method private prepareSuperNight()V
    .locals 4

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getMiviSuperNightData()Lcom/android/camera2/vendortag/struct/MiviSuperNightData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->getSuperNightEvValue()Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSuperNightValue:Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getHalSuperNightValues()[B

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v0}, Lcom/android/camera2/CaptureResultParser;->getSuperNightCheckerEv(Landroid/hardware/camera2/CaptureResult;)[B

    move-result-object v0

    :cond_1
    const-string v1, "camera.debug.superlowlight"

    invoke-static {v1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/camera2/vendortag/struct/SuperNightEvValue;->parseSuperNightEvValue([BLjava/lang/String;Z)Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSuperNightValue:Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareSuperNight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSuperNightValue:Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    invoke-virtual {v1}, Lcom/android/camera2/vendortag/struct/SuperNightEvValue;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ShotParallelBurst"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSuperNightValue:Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/struct/SuperNightEvValue;->getSequenceNum()I

    move-result v0

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getNightMotionMode()I

    move-result v0

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mNightMotionMode:I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v0}, Lcom/android/camera2/CaptureResultParser;->getSuperNightCheckerAepLine(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSuperNightAepLineValue:[I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareSuperNight, mSuperNightAepLineValue: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSuperNightAepLineValue:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    invoke-static {v0}, Lcom/xiaomi/camera/base/Constants;->isMTKRawSuperNight(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->initFeatureSetting()V

    :cond_2
    return-void
.end method

.method private removeRtStreamTargetForSrIfNeed(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "disableRtStreamForSrRequired"
        type = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "captureRequestBuilder",
            "requestIndex"
        }
    .end annotation

    if-eqz p1, :cond_4

    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v1

    invoke-virtual {v1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0OO0()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->disableRtStreamForSrRequired(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewImageReader:Landroid/media/ImageReader;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    :cond_2
    if-nez p2, :cond_3

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->disableRtStreamForSrExceptFistFrame(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p2

    if-eqz p2, :cond_3

    return-void

    :cond_3
    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object p0

    iget-object p0, p0, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    if-eqz p0, :cond_4

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private updateFusionCaptureRequest(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "builder"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSatFusionType:LOooO0Oo/OooO0OO;

    invoke-virtual {v0}, LOooO0Oo/OooO0OO;->OooO0o()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSatFusionType:LOooO0Oo/OooO0OO;

    invoke-virtual {v0}, LOooO0Oo/OooO0OO;->OooO00o()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSatFusionMainSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSatFusionSubSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSatFusionType:LOooO0Oo/OooO0OO;

    invoke-virtual {v0}, LOooO0Oo/OooO0OO;->OooO0Oo()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSatFusionSubSurface:Landroid/view/Surface;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSatFusionMainSurface:Landroid/view/Surface;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSatFusionType:LOooO0Oo/OooO0OO;

    invoke-virtual {p1}, LOooO0Oo/OooO0OO;->OooO0Oo()I

    move-result p1

    invoke-static {p2, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameCount(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSatFusionType:LOooO0Oo/OooO0OO;

    invoke-virtual {p0}, LOooO0Oo/OooO0OO;->OooO0Oo()I

    move-result p0

    invoke-static {p2, p0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    invoke-static {p2, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {p2, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applySuperResolution(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSatFusionMainSurface:Landroid/view/Surface;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSatFusionSubSurface:Landroid/view/Surface;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSatFusionType:LOooO0Oo/OooO0OO;

    invoke-virtual {p1}, LOooO0Oo/OooO0OO;->OooO0o0()I

    move-result p1

    invoke-static {p2, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameCount(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSatFusionType:LOooO0Oo/OooO0OO;

    invoke-virtual {p0}, LOooO0Oo/OooO0OO;->OooO0o0()I

    move-result p0

    invoke-static {p2, p0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    invoke-static {p2, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {p2, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applySuperResolution(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic OooO0O0(I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->lambda$prepareSR$0(I)Z

    move-result p0

    return p0
.end method

.method public generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 1

    new-instance v0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;

    invoke-direct {v0, p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;-><init>(Lcom/android/camera2/MiCamera2ShotParallelBurst;)V

    return-object v0
.end method

.method public generateRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mUseParallelVtCam:Z

    const/4 v2, 0x2

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    :goto_0
    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->isQcfaEnable()Z

    move-result v3

    const/16 v6, 0x11

    const/16 v7, 0x10

    const/16 v8, 0x23

    const/16 v9, 0xf

    const/4 v10, 0x3

    const/16 v11, 0x14

    const-string v12, "ShotParallelBurst"

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/MiCameraSurfaceManager;->getQcfaRemoteSurface()Landroid/view/Surface;

    move-result-object v3

    iget v15, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-ne v6, v15, :cond_1

    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/MiCameraSurfaceManager;->getSharedRawSurface()Landroid/view/Surface;

    move-result-object v3

    iget-object v15, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v15}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/camera2/CameraConfigs;->getBinningPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v15

    iput-object v15, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    :cond_1
    invoke-static {v3}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v15

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v14

    aput-object v15, v2, v13

    const-string v4, "[QCFA] add surface %s to capture request, size is: %s"

    invoke-static {v5, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v14, [Ljava/lang/Object;

    invoke-static {v12, v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    iget-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mLockedAlgoSize:Landroid/util/Size;

    if-eqz v2, :cond_2

    invoke-virtual {v0, v2, v8}, Lcom/android/camera2/MiCamera2ShotParallel;->configParallelSession(Landroid/util/Size;I)Lcom/xiaomi/engine/BufferFormat;

    move-result-object v2

    iput-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    goto :goto_1

    :cond_2
    iget v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-eq v6, v2, :cond_3

    invoke-virtual {v0, v15, v8}, Lcom/android/camera2/MiCamera2ShotParallel;->configParallelSession(Landroid/util/Size;I)Lcom/xiaomi/engine/BufferFormat;

    move-result-object v2

    iput-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    :cond_3
    :goto_1
    move v3, v14

    goto/16 :goto_13

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2ShotParallel;->isIn3OrMoreSatMode()Z

    move-result v3

    const/16 v4, 0xa

    if-nez v3, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2ShotParallel;->isInMultiSurfaceSatMode()Z

    move-result v3

    if-eqz v3, :cond_5

    goto/16 :goto_6

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "algoType = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v14, [Ljava/lang/Object;

    invoke-static {v12, v3, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/MiCameraSurfaceManager;->getParallelSpecList()Landroid/util/SparseArray;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera2/imagereaders/ImageReaderSurface;->getSurfaceFromSparseArray(Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/Surface;

    const/16 v15, 0xc

    iget v8, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-ne v15, v8, :cond_6

    iget-object v8, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v8}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera2/MiCameraSurfaceManager;->getSharedRawSurface()Landroid/view/Surface;

    move-result-object v8

    if-eq v5, v8, :cond_c

    iget-object v8, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v8}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera2/MiCameraSurfaceManager;->getRawSurfaceForTuningBuffer()Landroid/view/Surface;

    move-result-object v8

    if-eq v5, v8, :cond_c

    :goto_3
    goto/16 :goto_4

    :cond_6
    if-eq v9, v8, :cond_e

    if-ne v11, v8, :cond_7

    goto/16 :goto_5

    :cond_7
    if-ne v4, v8, :cond_8

    iget v15, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mRawCallbackType:I

    if-ne v7, v15, :cond_8

    iget-object v8, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v8}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera2/MiCameraSurfaceManager;->getSharedRawSurface()Landroid/view/Surface;

    move-result-object v8

    if-eq v5, v8, :cond_c

    goto :goto_3

    :cond_8
    if-ne v6, v8, :cond_9

    iget v8, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mRawCallbackType:I

    if-ne v7, v8, :cond_9

    iget-object v8, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v8}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera2/MiCameraSurfaceManager;->getSharedRawSurface()Landroid/view/Surface;

    move-result-object v8

    if-eq v5, v8, :cond_c

    goto :goto_3

    :cond_9
    iget-object v8, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v8}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera2/MiCameraSurfaceManager;->getSharedRawSurface()Landroid/view/Surface;

    move-result-object v8

    if-eq v8, v5, :cond_d

    iget-object v8, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v8}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera2/MiCameraSurfaceManager;->getRawSurfaceForTuningBuffer()Landroid/view/Surface;

    move-result-object v8

    if-eq v8, v5, :cond_d

    iget-object v8, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v8}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera2/MiCameraSurfaceManager;->getTuningRemoteSurface()Landroid/view/Surface;

    move-result-object v8

    if-eq v8, v5, :cond_d

    iget-object v8, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v8}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera2/MiCameraSurfaceManager;->getSharedRawSurfaceForSNSE()Landroid/view/Surface;

    move-result-object v8

    if-ne v8, v5, :cond_a

    goto :goto_3

    :cond_a
    iget v8, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-eq v13, v8, :cond_b

    if-ne v11, v8, :cond_c

    :cond_b
    iget-boolean v8, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrBokeh:Z

    if-eqz v8, :cond_c

    iget-object v8, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v8}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera2/MiCameraSurfaceManager;->getBokehMainRawSurface()Landroid/view/Surface;

    move-result-object v8

    if-eq v5, v8, :cond_d

    iget-object v8, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v8}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera2/MiCameraSurfaceManager;->getBokehSubRawSurface()Landroid/view/Surface;

    move-result-object v8

    if-ne v5, v8, :cond_c

    goto/16 :goto_3

    :cond_c
    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v15, v2, [Ljava/lang/Object;

    aput-object v5, v15, v14

    invoke-static {v5}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v16

    aput-object v16, v15, v13

    const-string v6, "add surface %s to capture request, size is: %s"

    invoke-static {v8, v6, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v8, v14, [Ljava/lang/Object;

    invoke-static {v12, v6, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    const/16 v6, 0x11

    :cond_d
    :goto_4
    const/16 v8, 0x23

    goto/16 :goto_2

    :cond_e
    :goto_5
    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->getPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v3

    iput-object v3, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    move v3, v14

    goto/16 :goto_12

    :cond_f
    :goto_6
    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getSatMasterCameraId()I

    move-result v3

    iput v3, v0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    iget v5, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-ne v9, v5, :cond_10

    const/16 v6, 0x20

    goto :goto_7

    :cond_10
    const/16 v6, 0x23

    :goto_7
    const/4 v8, 0x0

    if-ne v4, v5, :cond_14

    iget v4, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mRawCallbackType:I

    if-ne v7, v4, :cond_14

    iget-object v4, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v4}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v4

    iget v5, v0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    invoke-virtual {v4, v5}, Lcom/android/camera2/MiCameraSurfaceManager;->getSatRawSurface(I)Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    invoke-static {v4}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v5

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v15, v2, [Ljava/lang/Object;

    aput-object v4, v15, v14

    aput-object v5, v15, v13

    const-string v4, "[SAT] add raw surface %s to capture request, size is: %s"

    invoke-static {v8, v4, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v8, v14, [Ljava/lang/Object;

    invoke-static {v12, v4, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v4}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v4

    iget v8, v0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    iget-object v15, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v15}, Lcom/android/camera2/MiCamera2;->isSAT()Z

    move-result v15

    invoke-virtual {v4, v8, v15}, Lcom/android/camera2/MiCameraSurfaceManager;->getMainCaptureSurface(IZ)Landroid/view/Surface;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v15

    if-ne v8, v15, :cond_11

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v15

    if-eq v8, v15, :cond_12

    :cond_11
    new-instance v5, Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v15

    invoke-direct {v5, v8, v15}, Landroid/util/Size;-><init>(II)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[SAT]override output size to "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v8, v14, [Ljava/lang/Object;

    invoke-static {v12, v4, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_12
    iget-object v4, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v4}, Lcom/android/camera2/MiCamera2;->getSatPhysicalCameraId()I

    move-result v4

    iput v4, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMainPhysicalCameraId:I

    iget v4, v0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    if-ne v13, v4, :cond_13

    move v3, v10

    goto/16 :goto_10

    :cond_13
    const/16 v3, 0x201

    goto/16 :goto_10

    :cond_14
    iget-boolean v4, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mUseParallelVtCam:Z

    if-nez v4, :cond_1e

    iget-boolean v4, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsFakeSatEnabled:Z

    if-eqz v4, :cond_15

    iget-object v4, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v4}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v4

    iget v5, v0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    iget-object v8, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v8}, Lcom/android/camera2/MiCamera2;->isSAT()Z

    move-result v8

    invoke-virtual {v4, v5, v8}, Lcom/android/camera2/MiCameraSurfaceManager;->getFakeSatMainCaptureSurface(IZ)Landroid/view/Surface;

    move-result-object v4

    iget-object v5, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v5}, Lcom/android/camera2/MiCamera2;->getFakeSatOutputSize()Landroid/util/Size;

    move-result-object v5

    iget v8, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-static {v1, v8}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspFrameCount(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    goto/16 :goto_a

    :cond_15
    if-eq v5, v13, :cond_16

    if-ne v5, v11, :cond_17

    :cond_16
    iget-boolean v4, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrSR:Z

    if-nez v4, :cond_17

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHighQualityPreferred()Z

    move-result v4

    if-eqz v4, :cond_17

    iget-object v4, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v4}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v4

    if-eqz v4, :cond_17

    invoke-static {v4}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedHdrType(Lcom/android/camera2/CameraCapabilities;)I

    move-result v4

    if-ne v10, v4, :cond_17

    iget-object v4, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v4}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v4

    iget v5, v0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    iget-object v8, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v8}, Lcom/android/camera2/MiCamera2;->isSAT()Z

    move-result v8

    invoke-virtual {v4, v5, v8}, Lcom/android/camera2/MiCameraSurfaceManager;->getTiledMainCaptureSurface(IZ)Landroid/view/Surface;

    move-result-object v8

    move v4, v13

    goto :goto_8

    :cond_17
    move v4, v14

    :goto_8
    iget-object v5, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v5}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera2/CameraConfigs;->getBinningSrData()Lcom/android/camera2/vendortag/struct/BinningSrData;

    move-result-object v5

    if-eqz v5, :cond_18

    invoke-virtual {v5}, Lcom/android/camera2/vendortag/struct/BinningSrData;->isBinningSrEnabled()Z

    move-result v5

    if-eqz v5, :cond_18

    iget v5, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-ne v5, v10, :cond_18

    iget v5, v0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    if-ne v2, v5, :cond_18

    iget-object v5, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v5}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera2/CameraConfigs;->getZoomRatio()F

    move-result v5

    const/high16 v15, 0x40000000    # 2.0f

    cmpl-float v5, v5, v15

    if-ltz v5, :cond_18

    new-array v5, v14, [Ljava/lang/Object;

    const-string v8, "[SAT] add binning sr surface "

    invoke-static {v12, v8, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v5}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera2/MiCameraSurfaceManager;->getSatBinningSRSurface()Landroid/view/Surface;

    move-result-object v8

    :cond_18
    if-nez v8, :cond_19

    iget-object v5, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v5}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v5

    iget v8, v0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    iget-object v15, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v15}, Lcom/android/camera2/MiCamera2;->isSAT()Z

    move-result v15

    invoke-virtual {v5, v8, v15}, Lcom/android/camera2/MiCameraSurfaceManager;->getMainCaptureSurface(IZ)Landroid/view/Surface;

    move-result-object v5

    goto :goto_9

    :cond_19
    move-object v5, v8

    :goto_9
    invoke-static {v5}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v8

    if-eqz v4, :cond_1a

    new-instance v4, Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v15

    div-int/lit8 v15, v15, 0x4

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-direct {v4, v15, v8}, Landroid/util/Size;-><init>(II)V

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v15, v13, [Ljava/lang/Object;

    aput-object v4, v15, v14

    const-string v3, "[SAT]hdr fusion mode, size is: %s"

    invoke-static {v8, v3, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v8, v14, [Ljava/lang/Object;

    invoke-static {v12, v3, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v17, v5

    move-object v5, v4

    move-object/from16 v4, v17

    goto :goto_a

    :cond_1a
    move-object v4, v5

    move-object v5, v8

    :goto_a
    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getSatMasterCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isFakeSatV2Supported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-boolean v3, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsFakeSatEnabled:Z

    invoke-static {v1, v3}, Lcom/android/camera2/compat/MiCameraCompat;->applyRemosaicEnabled(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_1b
    iget v3, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-ne v3, v9, :cond_1d

    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->isMfnrRaw10()Z

    move-result v3

    if-eqz v3, :cond_1c

    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/MiCameraSurfaceManager;->getSharedRawSurfaceForSNSE()Landroid/view/Surface;

    move-result-object v3

    goto :goto_b

    :cond_1c
    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/MiCameraSurfaceManager;->getSharedRawSurface()Landroid/view/Surface;

    move-result-object v3

    :goto_b
    move-object v4, v3

    invoke-static {v4}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v3

    goto :goto_c

    :cond_1d
    if-ne v11, v3, :cond_1f

    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/MiCameraSurfaceManager;->getSharedRawSurface()Landroid/view/Surface;

    move-result-object v4

    goto :goto_d

    :cond_1e
    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object v3

    iget v4, v0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    invoke-virtual {v3, v4}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getCaptureSurface(I)Landroid/view/Surface;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v3

    :goto_c
    move-object v5, v3

    :cond_1f
    :goto_d
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v4, v8, v14

    aput-object v5, v8, v13

    const-string v15, "[SAT] add main surface %s to capture request, size is: %s"

    invoke-static {v3, v15, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-array v15, v14, [Ljava/lang/Object;

    invoke-static {v12, v8, v15}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v8, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v8}, Lcom/android/camera2/MiCamera2;->getSatPhysicalCameraId()I

    move-result v8

    iput v8, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMainPhysicalCameraId:I

    invoke-virtual {v1, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    iget-object v8, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v8}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera2/MiCameraSurfaceManager;->getUltraWideRemoteSurface()Landroid/view/Surface;

    move-result-object v8

    if-eq v4, v8, :cond_22

    iget-object v8, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v8}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera2/MiCameraSurfaceManager;->getTiledUltraWideRemoteSurface()Landroid/view/Surface;

    move-result-object v8

    if-eqz v8, :cond_20

    iget-object v8, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v8}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera2/MiCameraSurfaceManager;->getTiledUltraWideRemoteSurface()Landroid/view/Surface;

    move-result-object v8

    if-eq v4, v8, :cond_22

    :cond_20
    iget-boolean v8, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mUseParallelVtCam:Z

    if-eqz v8, :cond_21

    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object v8

    invoke-virtual {v8, v13}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getCaptureSurface(I)Landroid/view/Surface;

    move-result-object v8

    if-ne v4, v8, :cond_21

    goto :goto_e

    :cond_21
    const/16 v16, 0x201

    goto :goto_f

    :cond_22
    :goto_e
    move/from16 v16, v10

    :goto_f
    iget-boolean v8, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsSatFusionShot:Z

    if-eqz v8, :cond_23

    iget-object v8, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v8}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera2/MiCameraSurfaceManager;->getUltraTeleRemoteSurface()Landroid/view/Surface;

    move-result-object v8

    invoke-static {v8}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v15

    new-array v10, v2, [Ljava/lang/Object;

    aput-object v8, v10, v14

    aput-object v15, v10, v13

    const-string v15, "[SAT] add ultra tele surface %s to capture request, size is: %s"

    invoke-static {v3, v15, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v10, v14, [Ljava/lang/Object;

    invoke-static {v12, v3, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result v3

    iput v3, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSubPhysicalCameraId:I

    iput-object v8, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSatFusionSubSurface:Landroid/view/Surface;

    iput-object v4, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSatFusionMainSurface:Landroid/view/Surface;

    invoke-virtual {v1, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    invoke-static {v1, v13}, Lcom/android/camera2/compat/MiCameraCompat;->applySatFusionEnabled(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    iget-object v3, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSatFusionType:LOooO0Oo/OooO0OO;

    invoke-virtual {v3}, LOooO0Oo/OooO0OO;->OooO0o()I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/camera2/compat/MiCameraCompat;->applySatFusionType(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    const/16 v3, 0x204

    goto :goto_10

    :cond_23
    invoke-static {v1, v14}, Lcom/android/camera2/compat/MiCameraCompat;->applySatFusionEnabled(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    sget-object v3, LOooO0Oo/OooO0OO;->OooO:LOooO0Oo/OooO0OO;

    invoke-virtual {v3}, LOooO0Oo/OooO0OO;->OooO0o()I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/camera2/compat/MiCameraCompat;->applySatFusionType(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    move/from16 v3, v16

    :goto_10
    iget v4, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-ne v9, v4, :cond_24

    const v8, 0x8014

    invoke-virtual {v0, v8, v5, v6, v3}, Lcom/android/camera2/MiCamera2ShotParallel;->configParallelSession(ILandroid/util/Size;II)Lcom/xiaomi/engine/BufferFormat;

    move-result-object v3

    iput-object v3, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->getPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v3

    iput-object v3, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    goto :goto_11

    :cond_24
    if-ne v11, v4, :cond_25

    invoke-virtual {v0, v14, v5, v6, v3}, Lcom/android/camera2/MiCamera2ShotParallel;->configParallelSession(ILandroid/util/Size;II)Lcom/xiaomi/engine/BufferFormat;

    move-result-object v3

    iput-object v3, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    goto :goto_11

    :cond_25
    iget-object v4, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v4}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v4

    if-eqz v4, :cond_27

    invoke-static {v4}, Lcom/android/camera2/CameraCapabilitiesUtil;->isHighPerformanceSessionKeySupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v8

    if-eqz v8, :cond_27

    invoke-static {v4}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportHighQualityPreferred(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v4

    if-eqz v4, :cond_27

    iget-object v4, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v4}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v4

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getSATCameraId()I

    move-result v8

    if-ne v4, v8, :cond_27

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHighQualityPreferred()Z

    move-result v4

    if-nez v4, :cond_27

    iget v4, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-eq v13, v4, :cond_26

    if-eq v11, v4, :cond_26

    iget-boolean v4, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrSR:Z

    if-eqz v4, :cond_27

    :cond_26
    const v4, 0xef06

    invoke-virtual {v0, v4, v5, v6, v3}, Lcom/android/camera2/MiCamera2ShotParallel;->configParallelSession(ILandroid/util/Size;II)Lcom/xiaomi/engine/BufferFormat;

    move-result-object v3

    iput-object v3, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    goto :goto_11

    :cond_27
    invoke-virtual {v0, v5, v6, v3}, Lcom/android/camera2/MiCamera2ShotParallel;->configParallelSession(Landroid/util/Size;II)Lcom/xiaomi/engine/BufferFormat;

    move-result-object v3

    iput-object v3, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    :goto_11
    move v3, v13

    :goto_12
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0o;->OooOOoo()Z

    move-result v4

    if-nez v4, :cond_28

    iget v4, v0, Lcom/android/camera2/MiCamera2Shot;->mOperationMode:I

    const v5, 0x9001

    if-eq v4, v5, :cond_28

    const v5, 0x9003

    if-eq v4, v5, :cond_28

    iget-object v4, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v4}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v14

    invoke-static {v4}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v6

    aput-object v6, v2, v13

    const-string v6, "add preview surface %s to capture request, size is: %s"

    invoke-static {v5, v6, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v5, v14, [Ljava/lang/Object;

    invoke-static {v12, v2, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mUseParallelVtCam:Z

    if-nez v2, :cond_28

    iput-boolean v13, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsAddTargetPreviewSurface:Z

    invoke-virtual {v1, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_28
    :goto_13
    iget-boolean v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mUseParallelVtCam:Z

    if-nez v2, :cond_2a

    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isHighQualityQuickShotEnabled()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-static {v1, v13}, Lcom/android/camera2/compat/MiCameraCompat;->applyHighQualityQuickShot(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isLimitMfnrNumFramesEnabled()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-static {v1, v13}, Lcom/android/camera2/compat/MiCameraCompat;->applyLimitMfnrNumFrames(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    goto :goto_14

    :cond_29
    invoke-static {v1, v14}, Lcom/android/camera2/compat/MiCameraCompat;->applyLimitMfnrNumFrames(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    :cond_2a
    :goto_14
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v2

    invoke-virtual {v2}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0Oo00o()Z

    move-result v2

    if-eqz v2, :cond_36

    iget v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-ne v9, v2, :cond_2e

    if-nez v3, :cond_2e

    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isMfnrRaw10()Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/MiCameraSurfaceManager;->getSharedRawSurfaceForSNSE()Landroid/view/Surface;

    move-result-object v2

    goto :goto_15

    :cond_2b
    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/MiCameraSurfaceManager;->getSharedRawSurface()Landroid/view/Surface;

    move-result-object v2

    :goto_15
    if-nez v2, :cond_2c

    new-array v3, v14, [Ljava/lang/Object;

    const-string v4, "could not find raw surface for supernight se"

    invoke-static {v12, v4, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2c
    invoke-static {v2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v3

    iget-object v4, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v4}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v4

    invoke-static {v4}, Lcom/xiaomi/camera/base/CameraIdUtil;->getCombinationModeByActualId(I)I

    move-result v4

    if-nez v4, :cond_2d

    move v4, v13

    :cond_2d
    const v5, 0x8014

    const/16 v6, 0x20

    invoke-virtual {v0, v5, v3, v6, v4}, Lcom/android/camera2/MiCamera2ShotParallel;->configParallelSession(ILandroid/util/Size;II)Lcom/xiaomi/engine/BufferFormat;

    move-result-object v4

    iput-object v4, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    iget-object v4, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v4}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera2/CameraConfigs;->getPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v4

    iput-object v4, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add raw surface for supernight se, size is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v14, [Ljava/lang/Object;

    invoke-static {v12, v2, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_16

    :cond_2e
    if-ne v11, v2, :cond_31

    if-nez v3, :cond_31

    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/MiCameraSurfaceManager;->getSharedRawSurface()Landroid/view/Surface;

    move-result-object v2

    if-nez v2, :cond_2f

    new-array v3, v14, [Ljava/lang/Object;

    const-string v4, "could not find raw surface for hdr reprocess"

    invoke-static {v12, v4, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2f
    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->getPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v3

    iput-object v3, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    const v3, 0x8001

    iget-object v4, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v4}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v4

    invoke-static {v4}, Lcom/xiaomi/camera/base/CameraIdUtil;->getCombinationModeByActualId(I)I

    move-result v4

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_30

    const v3, 0x8005

    :cond_30
    new-instance v5, Landroid/util/Size;

    iget-object v6, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    iget v8, v6, Lcom/android/camera/CameraSize;->width:I

    iget v6, v6, Lcom/android/camera/CameraSize;->height:I

    invoke-direct {v5, v8, v6}, Landroid/util/Size;-><init>(II)V

    const/16 v6, 0x23

    invoke-virtual {v0, v3, v5, v6, v4}, Lcom/android/camera2/MiCamera2ShotParallel;->configParallelSession(ILandroid/util/Size;II)Lcom/xiaomi/engine/BufferFormat;

    move-result-object v3

    iput-object v3, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add raw surface for hdr reprocess, size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v14, [Ljava/lang/Object;

    invoke-static {v12, v2, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_16

    :cond_31
    if-nez v3, :cond_32

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v2

    invoke-virtual {v2}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00O()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isCameraModule()Z

    move-result v2

    if-eqz v2, :cond_32

    new-instance v2, Landroid/util/Size;

    iget-object v3, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    iget v4, v3, Lcom/android/camera/CameraSize;->width:I

    iget v3, v3, Lcom/android/camera/CameraSize;->height:I

    invoke-direct {v2, v4, v3}, Landroid/util/Size;-><init>(II)V

    const/16 v3, 0x23

    invoke-virtual {v0, v2, v3}, Lcom/android/camera2/MiCamera2ShotParallel;->configParallelSession(Landroid/util/Size;I)Lcom/xiaomi/engine/BufferFormat;

    move-result-object v2

    iput-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    goto :goto_16

    :cond_32
    iget-boolean v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mReConfigParallel:Z

    if-eqz v2, :cond_33

    iget v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mRawCallbackType:I

    invoke-direct {v0, v2}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->isMTKRawSuperNightCallback(I)Z

    move-result v2

    if-nez v2, :cond_33

    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isNightCaptureDisabled(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isSuperNightEnabled()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSuperNightScene()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->isOnSuperNightAlgoUpMode()Z

    move-result v2

    if-eqz v2, :cond_33

    new-instance v2, Landroid/util/Size;

    iget-object v3, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    iget v4, v3, Lcom/android/camera/CameraSize;->width:I

    iget v3, v3, Lcom/android/camera/CameraSize;->height:I

    invoke-direct {v2, v4, v3}, Landroid/util/Size;-><init>(II)V

    const/16 v3, 0x23

    invoke-virtual {v0, v2, v3}, Lcom/android/camera2/MiCamera2ShotParallel;->configParallelSession(Landroid/util/Size;I)Lcom/xiaomi/engine/BufferFormat;

    move-result-object v2

    iput-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    :cond_33
    :goto_16
    iget v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-eq v9, v2, :cond_35

    if-ne v11, v2, :cond_34

    goto :goto_17

    :cond_34
    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/MiCameraSurfaceManager;->getTuningRemoteSurface()Landroid/view/Surface;

    move-result-object v2

    goto :goto_18

    :cond_35
    :goto_17
    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/MiCameraSurfaceManager;->getRawSurfaceForTuningBuffer()Landroid/view/Surface;

    move-result-object v2

    :goto_18
    if-eqz v2, :cond_36

    new-array v3, v13, [Ljava/lang/Object;

    invoke-static {v2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v4

    aput-object v4, v3, v14

    const-string v4, "add tuning surface to capture request, size is: %s"

    invoke-static {v12, v4, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_36
    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->isNeedPreviewImageReader()Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewImageReader:Landroid/media/ImageReader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add preview callback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v4}, Lcom/android/camera2/MiCamera2;->getPreviewCallbackType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v14, [Ljava/lang/Object;

    invoke-static {v12, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getPreviewCallbackType()I

    move-result v3

    and-int/2addr v3, v7

    if-eqz v3, :cond_37

    if-eqz v2, :cond_37

    new-array v3, v14, [Ljava/lang/Object;

    const-string v4, "add preview target"

    invoke-static {v12, v4, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_37
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyAiASDEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    const/4 v3, 0x3

    invoke-virtual {v2, v1, v3}, Lcom/android/camera2/MiCamera2;->applySettingsForCapture(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    iget v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-eq v2, v13, :cond_40

    if-ne v2, v11, :cond_38

    goto/16 :goto_1c

    :cond_38
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSuperMoonMode()Z

    move-result v2

    if-eqz v2, :cond_3c

    iget v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-ne v2, v3, :cond_3a

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v2

    invoke-virtual {v2}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0OO0()Z

    move-result v2

    if-eqz v2, :cond_39

    goto :goto_19

    :cond_39
    move v2, v14

    goto :goto_1a

    :cond_3a
    :goto_19
    move v2, v13

    :goto_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_3b

    const-string v4, "enable"

    goto :goto_1b

    :cond_3b
    const-string v4, "disable"

    :goto_1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ZSL for SuperMoonMode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v14, [Ljava/lang/Object;

    invoke-static {v12, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_1e

    :cond_3c
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0o;->OooOOoo()Z

    move-result v2

    if-nez v2, :cond_43

    iget v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    const/4 v3, 0x7

    const-string v4, "enable ZSL for algo "

    if-ne v2, v3, :cond_3d

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v2

    invoke-virtual {v2}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0O0oO0O()Z

    move-result v2

    if-eqz v2, :cond_3d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v14, [Ljava/lang/Object;

    invoke-static {v12, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_1e

    :cond_3d
    const/16 v2, 0x12

    iget v3, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-ne v2, v3, :cond_3e

    new-array v2, v14, [Ljava/lang/Object;

    const-string v3, "enable ZSL for pureview algo "

    invoke-static {v12, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_1e

    :cond_3e
    const/4 v2, 0x3

    if-ne v3, v2, :cond_3f

    iget-boolean v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsFakeSatEnabled:Z

    if-nez v2, :cond_3f

    iget-boolean v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsSatFusionShot:Z

    if-nez v2, :cond_3f

    iget-boolean v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrSR:Z

    if-nez v2, :cond_3f

    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isNeedFlash()Z

    move-result v2

    if-nez v2, :cond_3f

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isProPhotoModule()Z

    move-result v2

    if-nez v2, :cond_3f

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v2

    invoke-virtual {v2}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0OO0()Z

    move-result v2

    if-eqz v2, :cond_3f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v14, [Ljava/lang/Object;

    invoke-static {v12, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1e

    :cond_3f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disable ZSL for algo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v14, [Ljava/lang/Object;

    invoke-static {v12, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1e

    :cond_40
    :goto_1c
    iget-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v2}, Lcom/android/camera2/CaptureResultParser;->getHdrCapturePreCollectEnable(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v2

    iget-boolean v3, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrBokeh:Z

    if-nez v3, :cond_42

    if-eqz v2, :cond_41

    goto :goto_1d

    :cond_41
    new-array v2, v14, [Ljava/lang/Object;

    const-string v3, "disable ZSL for HDR"

    invoke-static {v12, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1e

    :cond_42
    :goto_1d
    new-array v2, v14, [Ljava/lang/Object;

    const-string v3, "enable ZSL for HDR"

    invoke-static {v12, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_43
    :goto_1e
    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isFlawDetectEnable()Z

    move-result v2

    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v3

    invoke-static {v3, v1, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyFlawDetectEnable(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    iget-boolean v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mUseParallelVtCam:Z

    if-eqz v2, :cond_46

    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportParallelCameraIds(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_44

    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportMultiCameraIds(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getParallelMasterCameraId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyParallelMasterCameraId(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    :cond_44
    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isLLSEnabled()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-static {v1, v13}, Lcom/android/camera2/compat/MiCameraCompat;->applyLLS(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    goto :goto_1f

    :cond_45
    invoke-static {v1, v14}, Lcom/android/camera2/compat/MiCameraCompat;->applyLLS(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    :cond_46
    :goto_1f
    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getShotPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mSavePath:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportParallelImageName(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2Shot;->getFileName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_47

    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyParallelImageName(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Ljava/lang/String;)V

    :cond_47
    iget-object v0, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isSupportP2done()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-static {v1, v13}, Lcom/android/camera2/compat/MiCameraCompat;->applyNotificationTrigger(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_48
    return-object v1
.end method

.method public getShutterTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mFirstFrameTimestamp:J

    return-wide v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ShotParallelBurst"

    return-object p0
.end method

.method public isShutterReturned()Z
    .locals 1

    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mStartedNum:I

    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCaptureShutter()V
    .locals 8
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isFastShutterCallbackSupported"
        type = 0x0
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v7, Lcom/android/camera2/QuickViewParam;

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/android/camera2/MiCamera2Shot;->mAnchorFrame:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/camera2/MiCamera2Shot;->mButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/camera2/QuickViewParam;-><init>(ZZZZLcom/android/camera/module/loader/camera2/ButtonStatus;)V

    invoke-interface {v0, v7}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureShutter(Lcom/android/camera2/QuickViewParam;)V

    :cond_0
    return-void
.end method

.method public prepare()V
    .locals 14

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mWaitingFirstFrame:Z

    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare: configs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "ShotParallelBurst"

    invoke-static {v5, v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepare: rawCallbackType = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mRawCallbackType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v5, v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isSuperResolutionEnabled()Z

    move-result v2

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getAlgorithmPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera2/MiCamera2Shot;->mPreviewSize:Lcom/android/camera/CameraSize;

    iget-object v4, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    iget-object v6, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {v4, v6}, Lcom/android/camera2/MiCamera2;->isFakeSatEnabled(Landroid/hardware/camera2/CaptureResult;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsFakeSatEnabled:Z

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->getHDSRStates()I

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "prepare: hdrSrStatus = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x7

    const/16 v10, 0x10

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mRawCallbackType:I

    if-ne v10, v6, :cond_0

    const/16 v1, 0x11

    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v1

    invoke-virtual {v1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00o0O()[I

    move-result-object v1

    array-length v1, v1

    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    goto/16 :goto_6

    :cond_0
    const v6, 0x800a

    iget v11, p0, Lcom/android/camera2/MiCamera2Shot;->mOperationMode:I

    const/16 v12, 0x20

    const/16 v13, 0x8

    if-eq v6, v11, :cond_c

    iget v6, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mRawCallbackType:I

    if-eq v13, v6, :cond_c

    if-eq v12, v6, :cond_c

    if-ne v10, v6, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v6, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSnapParam:Lcom/android/camera2/SnapParam;

    if-eqz v6, :cond_3

    iget-object v6, v6, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget-boolean v10, v6, Lcom/android/camera2/SnapParam$Param;->isPreviewTriggerHdr:Z

    if-eqz v10, :cond_3

    iget v10, v6, Lcom/android/camera2/SnapParam$Param;->previewTriggerHdrType:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_2

    iput v10, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    iget-boolean v1, v6, Lcom/android/camera2/SnapParam$Param;->isHDRBokeh:Z

    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrBokeh:Z

    iget-boolean v1, v6, Lcom/android/camera2/SnapParam$Param;->isHDRSR:Z

    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrSR:Z

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->fillOtherHdrParam()V

    goto/16 :goto_6

    :cond_2
    invoke-direct {p0, v1, v4}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->checkHdrLegacy(Lcom/android/camera2/CameraConfigs;I)V

    goto/16 :goto_6

    :cond_3
    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-direct {p0, v1, v4}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->checkHdrLegacy(Lcom/android/camera2/CameraConfigs;I)V

    goto/16 :goto_6

    :cond_4
    if-eqz v2, :cond_5

    iput v7, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    invoke-direct {p0, v3}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->prepareSR(Z)V

    goto/16 :goto_6

    :cond_5
    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    if-nez v1, :cond_6

    const/4 v1, 0x0

    goto :goto_0

    :cond_6
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v4}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    :goto_0
    iget-object v4, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v4}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera2/CameraConfigs;->isMfnrEnabled()Z

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "prepare: iso = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " isHwMFNREnabled = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v10, v3, [Ljava/lang/Object;

    invoke-static {v5, v6, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v6

    invoke-virtual {v6}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0OOo0O()Z

    move-result v6

    if-eqz v6, :cond_7

    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mShouldDoMFNR:Z

    goto :goto_2

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v10, 0x320

    if-lt v6, v10, :cond_8

    move v6, v0

    goto :goto_1

    :cond_8
    move v6, v3

    :goto_1
    iput-boolean v6, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mShouldDoMFNR:Z

    :goto_2
    iget-boolean v6, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mShouldDoMFNR:Z

    if-eqz v6, :cond_b

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSuperMoonMode()Z

    move-result v6

    if-eqz v6, :cond_9

    if-nez v4, :cond_b

    :cond_9
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v4

    invoke-virtual {v4}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0OOo0O()Z

    move-result v4

    if-eqz v4, :cond_a

    iput v9, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    invoke-direct {p0, v1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->prepareHHT(Ljava/lang/Integer;)V

    goto :goto_3

    :cond_a
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v1

    invoke-virtual {v1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->oo0oOO0()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_b

    iput v8, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->prepareClearShot()V

    :cond_b
    :goto_3
    iget v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-nez v1, :cond_f

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    goto :goto_6

    :cond_c
    :goto_4
    iget v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mRawCallbackType:I

    if-ne v13, v1, :cond_d

    const/16 v1, 0xc

    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    goto :goto_5

    :cond_d
    if-ne v12, v1, :cond_e

    const/16 v1, 0xf

    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    goto :goto_5

    :cond_e
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    :goto_5
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->prepareSuperNight()V

    :cond_f
    :goto_6
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->doAnchorFrameAsThumbnail()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2Shot;->mAnchorFrame:Z

    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2Shot;->mNeedDoAnchorFrame:Z

    iget v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    invoke-virtual {p0, v1}, Lcom/android/camera2/MiCamera2Shot;->getSoundTimeWhenAnchor(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera2/MiCamera2Shot;->mSoundTime:I

    iput-boolean v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsAddTargetPreviewSurface:Z

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v4, v9, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v3

    iget v6, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v0

    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mShouldDoMFNR:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v7

    const/4 v0, 0x4

    iget-boolean v2, p0, Lcom/android/camera2/MiCamera2Shot;->mAnchorFrame:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v0

    const/4 v0, 0x5

    iget-boolean v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mUseParallelVtCam:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v0

    const/4 v0, 0x6

    iget p0, p0, Lcom/android/camera2/MiCamera2Shot;->mSoundTime:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v0

    const-string p0, "prepare: algo=%d captureNum=%d doMFNR=%b doSR=%b anchor=%b mUseParallelVtCam=%b soundTime=%d"

    invoke-static {v1, p0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v5, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public startSessionCapture()V
    .locals 11

    const-string v0, "ShotParallelBurst"

    const/16 v1, 0x100

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->generateRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startSessionCapture mSequenceNum:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v0, v5, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v5, v6

    :goto_0
    iget v7, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    if-ge v5, v7, :cond_c

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0o;->OooOOoo()Z

    move-result v7

    if-eqz v7, :cond_a

    iget-boolean v7, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsFakeSatEnabled:Z

    if-eqz v7, :cond_0

    invoke-static {v3, v5}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspFrameIndex(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    :cond_0
    iget-object v7, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v7}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v7

    invoke-static {v7}, Lcom/android/camera2/CameraCapabilitiesUtil;->getCameraId(Lcom/android/camera2/CameraCapabilities;)I

    move-result v7

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v8

    if-ne v7, v8, :cond_1

    iget-object v7, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v7, v3}, Lcom/android/camera2/compat/MiCameraCompat;->copyFpcDataFromCaptureResultToRequest(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->isIn3OrMoreSatMode()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->isInMultiSurfaceSatMode()Z

    move-result v7

    if-eqz v7, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object v7, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v7}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v7

    invoke-static {v7}, Lcom/android/camera2/CameraCapabilitiesUtil;->getCameraId(Lcom/android/camera2/CameraCapabilities;)I

    move-result v7

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v8

    if-eq v7, v8, :cond_3

    iget v7, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_a

    :cond_3
    iget-object v7, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v7}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera2/CameraConfigs;->getZoomRatio()F

    move-result v7

    iget-object v8, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mActiveArraySize:Landroid/graphics/Rect;

    invoke-static {v7, v8}, Lcom/android/camera/zoom/HybridZoomingSystem;->toCropRegion(FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v8}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v8

    invoke-static {v8}, Lcom/android/camera2/CameraCapabilitiesUtil;->isZoomRatioSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v9

    invoke-virtual {v9}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0Oo00o0()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v9}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v9

    invoke-static {v9}, Lcom/android/camera2/CameraCapabilitiesUtil;->getCameraId(Lcom/android/camera2/CameraCapabilities;)I

    move-result v9

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v10

    if-ne v9, v10, :cond_4

    iget-object v8, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v8}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera2/CameraConfigs;->getZoomRatio()F

    move-result v8

    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isZoomRatioSupported, uw/sr set zoomRatio = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v6, [Ljava/lang/Object;

    invoke-static {v0, v9, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v3, v8}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->applyZoomRatio(Landroid/hardware/camera2/CaptureRequest$Builder;F)V

    goto :goto_1

    :cond_5
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v8

    invoke-virtual {v8}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0Oo00o0()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v8}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v8

    invoke-static {v8}, Lcom/android/camera2/CameraCapabilitiesUtil;->getCameraId(Lcom/android/camera2/CameraCapabilities;)I

    move-result v8

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v9

    if-ne v8, v9, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "supportMtkCropRegion: uw/sr set crop = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v0, v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v8, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "uw/sr set crop = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mActiveArraySize:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v0, v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v9, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mActiveArraySize:Landroid/graphics/Rect;

    invoke-virtual {v3, v8, v9}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "uw/sr set mtkCrop = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v0, v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v3, v7}, Lcom/android/camera2/compat/MiCameraCompat;->applyPostProcessCropRegion(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/graphics/Rect;)V

    goto :goto_4

    :cond_7
    :goto_2
    iget-object v7, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    sget-object v8, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->MI_STATISTICS_FACE_RECTANGLES:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v7, v8}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/graphics/Rect;

    if-eqz v7, :cond_8

    const-string v8, "set mtk face"

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v0, v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v3, v7}, Lcom/android/camera2/compat/MiCameraCompat;->applyFaceRectangles(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/graphics/Rect;)V

    goto :goto_3

    :cond_8
    const-string v7, "get mtk face = null"

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v0, v7, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    const/4 v7, 0x1

    invoke-static {v3, v7}, Lcom/android/camera2/compat/MiCameraCompat;->applyNotificationTrigger(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    iget-object v7, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    sget-object v8, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->POST_PROCESS_CROP_REGION:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v7, v8}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    if-eqz v7, :cond_9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sat set mtkCrop = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v0, v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v3, v7}, Lcom/android/camera2/compat/MiCameraCompat;->applyPostProcessCropRegion(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/graphics/Rect;)V

    goto :goto_4

    :cond_9
    const-string v7, "sat get mtkCrop = null"

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v0, v7, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    :goto_4
    iget v7, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    invoke-direct {p0, v3, v5, v7}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->applyAlgoParameter(Landroid/hardware/camera2/CaptureRequest$Builder;II)V

    iget-boolean v7, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsSatFusionShot:Z

    if-eqz v7, :cond_b

    invoke-direct {p0, v5, v3}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->updateFusionCaptureRequest(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_b
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_c
    iget-object v5, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v5}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera2/CameraCapabilitiesUtil;->getCameraId(Lcom/android/camera2/CameraCapabilities;)I

    move-result v5

    iget-object v6, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    if-nez v6, :cond_d

    new-instance v6, Lcom/xiaomi/engine/BufferFormat;

    iget-object v7, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    iget v8, v7, Lcom/android/camera/CameraSize;->width:I

    iget v7, v7, Lcom/android/camera/CameraSize;->height:I

    const/16 v9, 0x23

    invoke-direct {v6, v8, v7, v9}, Lcom/xiaomi/engine/BufferFormat;-><init>(III)V

    :cond_d
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    invoke-virtual {p0, v3, v6, v5}, Lcom/android/camera2/MiCamera2ShotParallel;->generatePreProcessData(Landroid/hardware/camera2/CaptureRequest;Lcom/xiaomi/engine/BufferFormat;I)Lcom/xiaomi/engine/PreProcessData;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {p0, v3}, Lcom/android/camera2/MiCamera2ShotParallel;->preCapture(Lcom/xiaomi/engine/PreProcessData;)V

    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startSessionCapture request number:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v3

    const-string v5, "algo_prepare_capture"

    invoke-virtual {v3, v5}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v3

    const-string v5, "algo_device_capture"

    invoke-virtual {v3, v5}, Lcom/android/camera/performance/PerformanceManager;->startAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v3

    const-string v5, "shot_prepare_capture"

    invoke-virtual {v3, v5}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v3

    const-string v5, "shot_device_capture"

    invoke-virtual {v3, v5}, Lcom/android/camera/performance/PerformanceManager;->startAction(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mUseParallelVtCam:Z
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "_"

    if-eqz v3, :cond_f

    :try_start_1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v3

    iget-object v6, p0, Lcom/android/camera2/MiCamera2Shot;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v2, v6}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mCaptureId:Ljava/lang/String;

    goto :goto_5

    :cond_f
    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v3

    iget-object v6, p0, Lcom/android/camera2/MiCamera2Shot;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v2, v6}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mCaptureId:Ljava/lang/String;

    :goto_5
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iget v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-static {v2, v3}, Lcom/android/camera/MemoryHelper;->addCapturedNumber(II)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception v2

    const-string v3, "Failed to captureBurst, IllegalArgument"

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p0, v1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_6

    :catch_1
    move-exception v2

    const-string v3, "Failed to captureBurst, IllegalState"

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p0, v1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_6

    :catch_2
    move-exception v1

    const-string v2, "Failed to captureBurst, CameraAccessException"

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    :goto_6
    return-void
.end method
