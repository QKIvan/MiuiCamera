.class public abstract Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;
.super Lcom/android/camera2/MiCamera2ShotParallel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;,
        Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;,
        Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$SurfaceParam;,
        Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$CallbackListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera2/MiCamera2ShotParallel<",
        "Lcom/xiaomi/camera/core/ParallelTaskData;",
        ">;"
    }
.end annotation


# static fields
.field public static final STAG:Ljava/lang/String; = "ShotInstanceV2"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mAlgoType:I

.field public mCombinationMode:I

.field public mCompletedMetaNum:I

.field public mMainPhysicalId:I

.field public mMainSurfaceIndex:I

.field public mMainSurfaceSize:Landroid/util/Size;

.field public mReceivedShutterNum:I

.field public mSnapParam:Lcom/android/camera2/SnapParam;

.field public mSubPhysicalId:I

.field public mSubSurfaceIndex:I

.field public mSubSurfaceSize:Landroid/util/Size;


# direct methods
.method public constructor <init>(Lcom/android/camera2/MiCamera2;)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "miCamera"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2ShotParallel;-><init>(Lcom/android/camera2/MiCamera2;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ShotInstanceV2@"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mMainPhysicalId:I

    iput p1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSubPhysicalId:I

    iput p1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mMainSurfaceIndex:I

    iput p1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSubSurfaceIndex:I

    const/16 p1, 0x201

    iput p1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mCombinationMode:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mAlgoType:I

    return-void
.end method

.method public constructor <init>(Lcom/android/camera2/MiCamera2;Lcom/android/camera/module/loader/camera2/ButtonStatus;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "miCamera",
            "buttonStatus"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/camera2/MiCamera2ShotParallel;-><init>(Lcom/android/camera2/MiCamera2;Lcom/android/camera/module/loader/camera2/ButtonStatus;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ShotInstanceV2@"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mMainPhysicalId:I

    iput p1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSubPhysicalId:I

    iput p1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mMainSurfaceIndex:I

    iput p1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSubSurfaceIndex:I

    const/16 p1, 0x201

    iput p1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mCombinationMode:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mAlgoType:I

    return-void
.end method

.method public constructor <init>(Lcom/android/camera2/MiCamera2;Lcom/android/camera/module/loader/camera2/ButtonStatus;Lcom/android/camera2/SnapParam;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "miCamera",
            "buttonStatus",
            "snapParam"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/camera2/MiCamera2ShotParallel;-><init>(Lcom/android/camera2/MiCamera2;Lcom/android/camera/module/loader/camera2/ButtonStatus;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ShotInstanceV2@"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mMainPhysicalId:I

    iput p1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSubPhysicalId:I

    iput p1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mMainSurfaceIndex:I

    iput p1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSubSurfaceIndex:I

    const/16 p1, 0x201

    iput p1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mCombinationMode:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mAlgoType:I

    iput-object p3, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    invoke-virtual {p3}, Lcom/android/camera2/SnapParam;->getAlgoType()I

    move-result p1

    iput p1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mAlgoType:I

    invoke-virtual {p3}, Lcom/android/camera2/SnapParam;->getOperatingMode()I

    move-result p1

    iput p1, p0, Lcom/android/camera2/MiCamera2Shot;->mOperationMode:I

    return-void
.end method

.method public static synthetic access$002(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mWaitingFirstFrame:Z

    return p1
.end method

.method public static synthetic access$1000(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera2/MiCamera2;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mFirstFrameTimestamp:J

    return-wide p1
.end method

.method public static synthetic access$1100(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera2/MiCamera2;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mFirstFrameTimestamp:J

    return-wide v0
.end method

.method public static synthetic access$1300(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mFirstFrameTimestamp:J

    return-wide v0
.end method

.method public static synthetic access$1400(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera2/MiCamera2;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->processCaptureFail()V

    return-void
.end method

.method public static synthetic access$1600(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2Shot;->mAnchorFrame:Z

    return p0
.end method

.method public static synthetic access$1700(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)I
    .locals 0

    iget p0, p0, Lcom/android/camera2/MiCamera2Shot;->mSoundTime:I

    return p0
.end method

.method public static synthetic access$1800(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2Shot;->mAnchorFrame:Z

    return p0
.end method

.method public static synthetic access$1900(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)I
    .locals 0

    iget p0, p0, Lcom/android/camera2/MiCamera2Shot;->mSoundTime:I

    return p0
.end method

.method public static synthetic access$200(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mWaitingFirstFrame:Z

    return p0
.end method

.method public static synthetic access$2000(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera/module/loader/camera2/ButtonStatus;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    return-object p0
.end method

.method public static synthetic access$2100(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera2/MiCamera2;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    return-object p0
.end method

.method public static synthetic access$2200(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera2/MiCamera2;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    return-object p0
.end method

.method public static synthetic access$2300(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mSavePath:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$2400(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera2/MiCamera2;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    return-object p0
.end method

.method public static synthetic access$2500(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera/module/loader/camera2/ButtonStatus;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    return-object p0
.end method

.method public static synthetic access$2600(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera/module/loader/camera2/ButtonStatus;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    return-object p0
.end method

.method public static synthetic access$2700(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera/module/loader/camera2/ButtonStatus;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    return-object p0
.end method

.method public static synthetic access$2800(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera2/MiCamera2;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    return-object p0
.end method

.method public static synthetic access$2900(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->getFileName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$3000(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2Shot;->mAnchorFrame:Z

    return p0
.end method

.method public static synthetic access$302(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mWaitingFirstFrame:Z

    return p1
.end method

.method public static synthetic access$3100(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)I
    .locals 0

    iget p0, p0, Lcom/android/camera2/MiCamera2Shot;->mSoundTime:I

    return p0
.end method

.method public static synthetic access$3200(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)I
    .locals 0

    iget p0, p0, Lcom/android/camera2/MiCamera2Shot;->mSoundTime:I

    return p0
.end method

.method public static synthetic access$3300(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera2/MiCamera2;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    return-object p0
.end method

.method public static synthetic access$3400(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2Shot;->mAnchorFrame:Z

    return p0
.end method

.method public static synthetic access$3500(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)I
    .locals 0

    iget p0, p0, Lcom/android/camera2/MiCamera2Shot;->mSoundTime:I

    return p0
.end method

.method public static synthetic access$3600(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera2/MiCamera2;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    return-object p0
.end method

.method public static synthetic access$3700(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera2/MiCamera2;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    return-object p0
.end method

.method public static synthetic access$3800(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera/CameraSize;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    return-object p0
.end method

.method public static synthetic access$3900(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2Shot;->mAnchorFrame:Z

    return p0
.end method

.method public static synthetic access$4000(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera/module/loader/camera2/ButtonStatus;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mFirstFrameTimestamp:J

    return-wide p1
.end method

.method public static synthetic access$4100(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)I
    .locals 0

    iget p0, p0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    return p0
.end method

.method public static synthetic access$4200(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mCaptureId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$4300(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/xiaomi/engine/BufferFormat;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    return-object p0
.end method

.method public static synthetic access$4400(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mCaptureId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;Landroid/hardware/camera2/CaptureResult;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera2/MiCamera2Shot;->processResult(Landroid/hardware/camera2/CaptureResult;Z)V

    return-void
.end method

.method public static synthetic access$602(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera2/MiCamera2Shot;->mAnchorFrameLost:Z

    return p1
.end method

.method public static synthetic access$700(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;Landroid/hardware/camera2/CaptureResult;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera2/MiCamera2Shot;->processResult(Landroid/hardware/camera2/CaptureResult;Z)V

    return-void
.end method

.method public static synthetic access$800(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera2/MiCamera2;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;)Lcom/android/camera2/MiCamera2;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    return-object p0
.end method

.method private applyParamWithZsl(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "request",
            "index"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->applyAlgoParam(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    invoke-virtual {v1}, Lcom/android/camera2/SnapParam;->isZslCapture()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->perRequestParamDone(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method private doAnchorFrame()Z
    .locals 3

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isModuleAnchorFrame()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "anchor frame not enabled"

    invoke-static {p0, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v0

    invoke-virtual {v0}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0OoOO00()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    invoke-virtual {v0}, Lcom/android/camera2/SnapParam;->isNeedFlash()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "flash disable anchor"

    invoke-static {p0, v2, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->doAnchorFrameAsThumbnail()Z

    move-result p0

    return p0
.end method

.method private generateRequestParam()Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->getCaptureSurfaceParam()Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$SurfaceParam;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateRequestParam: target surface size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$SurfaceParam;->surfaces:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$SurfaceParam;->surfaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    iget-object v5, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add surface target: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;

    invoke-direct {p0}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-boolean v0, v1, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$SurfaceParam;->isSatMode:Z

    iput-boolean v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;->isSatMode:Z

    iget-boolean v0, v1, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$SurfaceParam;->isLegacySat:Z

    iput-boolean v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;->isLegacySat:Z

    iget-boolean v0, v1, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$SurfaceParam;->isRoleSat:Z

    iput-boolean v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;->isRoleSat:Z

    return-object p0
.end method

.method private generateSavePath(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getShotPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mSavePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportParallelImageName(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->getFileName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    invoke-static {p1, p0, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyParallelImageName(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final getSoundTime(II)I
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "algoType",
            "soundTime"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_0

    and-int/lit8 p0, p1, 0x3

    goto :goto_1

    :cond_0
    shr-int/lit8 p0, p1, 0x4

    goto :goto_0

    :cond_1
    shr-int/lit8 p0, p1, 0x2

    :goto_0
    and-int/2addr p0, v1

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "final soundTime is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ShotInstanceV2"

    invoke-static {v1, p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method

.method public static final getSoundTimeWhenAnchor(ILcom/android/camera2/CameraCapabilities;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "algoType",
            "caps"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSoundTimeWhenAnchor(Lcom/android/camera2/CameraCapabilities;)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "original soundTime is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ShotInstanceV2"

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->getSoundTime(II)I

    move-result p1

    :goto_0
    return p1
.end method


# virtual methods
.method public afterCapture(Z)V
    .locals 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "success"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afterCapture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iget-object p0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object p0, p0, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget p0, p0, Lcom/android/camera2/SnapParam$Param;->sequenceNum:I

    invoke-static {p1, p0}, Lcom/android/camera/MemoryHelper;->addCapturedNumber(II)V

    return-void
.end method

.method public abstract applyAlgoParam(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "request",
            "index"
        }
    .end annotation
.end method

.method public beforeCapture(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestParam"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "beforeCapture: "

    invoke-static {p0, v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public captureRequestReady(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "captureRequestReady: "

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getCameraId(Lcom/android/camera2/CameraCapabilities;)I

    move-result v0

    iget v1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mMainPhysicalId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    move v0, v1

    :cond_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    if-nez v1, :cond_1

    new-instance v1, Lcom/xiaomi/engine/BufferFormat;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    iget v3, v2, Lcom/android/camera/CameraSize;->width:I

    iget v2, v2, Lcom/android/camera/CameraSize;->height:I

    const/16 v4, 0x23

    invoke-direct {v1, v3, v2, v4}, Lcom/xiaomi/engine/BufferFormat;-><init>(III)V

    :cond_1
    iget-object p1, p1, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/camera2/MiCamera2ShotParallel;->generatePreProcessData(Landroid/hardware/camera2/CaptureRequest;Lcom/xiaomi/engine/BufferFormat;I)Lcom/xiaomi/engine/PreProcessData;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/camera2/MiCamera2ShotParallel;->preCapture(Lcom/xiaomi/engine/PreProcessData;)V

    :cond_2
    iget-object p1, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "captureRequestReady request number:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object p0, p0, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget p0, p0, Lcom/android/camera2/SnapParam$Param;->sequenceNum:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object p0

    const-string p1, "algo_prepare_capture"

    invoke-virtual {p0, p1}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object p0

    const-string p1, "algo_device_capture"

    invoke-virtual {p0, p1}, Lcom/android/camera/performance/PerformanceManager;->startAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object p0

    const-string p1, "shot_prepare_capture"

    invoke-virtual {p0, p1}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object p0

    const-string p1, "shot_device_capture"

    invoke-virtual {p0, p1}, Lcom/android/camera/performance/PerformanceManager;->startAction(Ljava/lang/String;)V

    return-void
.end method

.method public abstract doAnchorFrameAsThumbnail()Z
.end method

.method public final generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 2

    new-instance v0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;

    invoke-virtual {p0}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->getCallbackListener()Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$CallbackListener;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$AlgoCaptureCallback;-><init>(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$CallbackListener;)V

    return-object v0
.end method

.method public final generateRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getCallbackListener()Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$CallbackListener;
.end method

.method public abstract getCaptureSurfaceParam()Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$SurfaceParam;
.end method

.method public getShutterTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mFirstFrameTimestamp:J

    return-wide v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public abstract isAnchorFrameLost()Z
.end method

.method public isShutterReturned()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    invoke-virtual {v0}, Lcom/android/camera2/SnapParam;->getCaptureType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mWaitingFirstFrame:Z

    xor-int/2addr p0, v1

    return p0

    :cond_0
    iget v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mReceivedShutterNum:I

    iget-object p0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object p0, p0, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget p0, p0, Lcom/android/camera2/SnapParam$Param;->sequenceNum:I

    if-ne v0, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
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

    iget-object p0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    invoke-virtual {p0}, Lcom/android/camera2/SnapParam;->isZslCapture()Z

    move-result p0

    iput-boolean p0, v7, Lcom/android/camera2/QuickViewParam;->zslSound:Z

    invoke-interface {v0, v7}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureShutter(Lcom/android/camera2/QuickViewParam;)V

    :cond_0
    return-void
.end method

.method public onParallelTaskDataCreated(Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taskData"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "onParallelTaskDataCreated: "

    invoke-static {p0, v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public perRequestParamDone(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "request",
            "index"
        }
    .end annotation

    return-void
.end method

.method public final prepare()V
    .locals 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getAlgorithmPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mPreviewSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p0}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->prepareShot()V

    invoke-direct {p0}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->doAnchorFrame()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2Shot;->mAnchorFrame:Z

    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2Shot;->mNeedDoAnchorFrame:Z

    iget v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mAlgoType:I

    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->getSoundTimeWhenAnchor(ILcom/android/camera2/CameraCapabilities;)I

    move-result v0

    iput v0, p0, Lcom/android/camera2/MiCamera2Shot;->mSoundTime:I

    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare: algoType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mAlgoType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " anchorFrame: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera2/MiCamera2Shot;->mAnchorFrame:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " soundTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera2/MiCamera2Shot;->mSoundTime:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public prepareAlgoParam(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "prepareAlgoParam: "

    invoke-static {p0, v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public abstract prepareShot()V
.end method

.method public final startSessionCapture()V
    .locals 10

    iget-object v0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    invoke-virtual {v0}, Lcom/android/camera2/SnapParam;->getCaptureType()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "!!!!! invalid capture type for capture"

    invoke-static {p0, v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->generateRequestParam()Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->beforeCapture(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;)V

    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    iget-object v4, v2, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Lcom/android/camera2/MiCamera2;->applySettingsForCapture(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    invoke-virtual {p0, v2}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->prepareAlgoParam(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;)V

    invoke-direct {p0, v2}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->generateSavePath(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;)V

    iget-object v3, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    invoke-virtual {v3}, Lcom/android/camera2/SnapParam;->getCaptureType()I

    move-result v3
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "_"

    const/4 v5, 0x1

    if-eq v3, v5, :cond_3

    :try_start_1
    iget-object v3, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "burst capture, frame: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object v7, v7, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget v7, v7, Lcom/android/camera2/SnapParam$Param;->sequenceNum:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v6, v1

    :goto_0
    iget-object v7, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->mSnapParam:Lcom/android/camera2/SnapParam;

    iget-object v7, v7, Lcom/android/camera2/SnapParam;->mParam:Lcom/android/camera2/SnapParam$Param;

    iget v7, v7, Lcom/android/camera2/SnapParam$Param;->sequenceNum:I

    if-ge v6, v7, :cond_1

    iget-object v7, v2, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v7, v6}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->applyParamWithZsl(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    iget-object v7, v2, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/camera2/CaptureRequest;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "capture burst for camera "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v9}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/android/camera/dump/RequestDump;->dump(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->captureRequestReady(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;)V

    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v2

    iget-object v6, p0, Lcom/android/camera2/MiCamera2Shot;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0, v6}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mCaptureId:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->TAG:Ljava/lang/String;

    const-string v6, "single capture"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v2, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v3, v1}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->applyParamWithZsl(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    invoke-virtual {p0, v2}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->captureRequestReady(Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;)V

    iget-object v2, v2, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance$RequestParam;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "capture for camera "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v6}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/camera/dump/RequestDump;->dump(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)V

    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v3

    iget-object v6, p0, Lcom/android/camera2/MiCamera2Shot;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v0, v6}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mCaptureId:Ljava/lang/String;

    :goto_2
    invoke-virtual {p0, v5}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->afterCapture(Z)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    invoke-virtual {p0, v1}, Lcom/android/camera2/AlgoTypeInstances/AlgoTypeShotInstance;->afterCapture(Z)V

    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    :goto_3
    return-void
.end method
