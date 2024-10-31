.class public Lcom/android/camera/module/image/ImageActionImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/camera/protocol/protocols/CameraAction;


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageActionImpl"


# instance fields
.field public mCancelDownCaptureOnLongClick:Z

.field public mLastShotClickTime:J

.field public mLongPressedAutoFocus:Z

.field private final mModule:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/Camera2Module;",
            ">;"
        }
    .end annotation
.end field

.field public mShotClickTimeInterval:J


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Camera2Module;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "module"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/camera/module/image/ImageActionImpl;->mLastShotClickTime:J

    iput-wide v0, p0, Lcom/android/camera/module/image/ImageActionImpl;->mShotClickTimeInterval:J

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/image/ImageActionImpl;->mModule:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private hidePostCaptureAlert()V
    .locals 2

    iget-object p0, p0, Lcom/android/camera/module/image/ImageActionImpl;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Camera2Module;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/IUserEventMgr;->enableCameraControls(Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->isSessionReady()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->resumePreview()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->startPreview()V

    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO0O00o0/OooOOOO;->o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO0O00o0/OooOOOO;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportLightTripartite(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {}, Lcom/android/camera/protocol/protocols/ReferenceLineProtocol;->impl()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO0O00o0/OooOOO0;->o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO0O00o0/OooOOO0;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/protocols/IntentDoneProtocol;->impl()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/protocols/IntentDoneProtocol;

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/IntentDoneProtocol;->hide()V

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "ImageActionImpl"

    const-string/jumbo v1, "showPostCaptureAlert: lost BaseDelegate"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private isCannotGotoGallery(Lcom/android/camera/module/Camera2Module;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "module"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentManuallyET;->isLongExpose(I)Z

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_1

    invoke-static {}, Lcom/android/camera/module/image/NightManager;->isLongExpCaptureInCaptureMode()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p0

    const/16 v2, 0xad

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v1

    :goto_1
    invoke-virtual {p1}, Lcom/android/camera/module/Camera2Module;->getImageCameraMgr()Lcom/android/camera/module/image/ImageModuleCameraManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCameraState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    if-eqz v2, :cond_3

    if-eqz p0, :cond_3

    move p0, v1

    goto :goto_3

    :cond_3
    move p0, v0

    :goto_3
    iget-object v2, p1, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    iget-boolean v2, v2, Lcom/android/camera/module/image/hdr/ParallelManager;->mEnableParallelSession:Z

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/Camera;->isImageSaverFull()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    move v2, v0

    :goto_4
    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isPaused()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isZooming()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p1}, Lcom/android/camera/module/Camera2Module;->needKeepCoverView()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p1, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    iget-boolean v3, v3, Lcom/android/camera/module/image/MultiCaptureManager;->mIsWorking:Z

    if-nez v3, :cond_5

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v3

    if-eqz v3, :cond_5

    if-nez v2, :cond_5

    invoke-virtual {p1}, Lcom/android/camera/module/Camera2Module;->isInCountDown()Z

    move-result p1

    if-nez p1, :cond_5

    if-eqz p0, :cond_6

    :cond_5
    move v0, v1

    :cond_6
    return v0
.end method

.method public static synthetic lambda$hidePostCaptureAlert$2(Lcom/android/camera/protocol/protocols/MainContentProtocol;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "protocol"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/EffectCropViewController;->setEffectViewVisible(Z)V

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->setIdPhotoBoxVisible(Z)V

    return-void
.end method

.method public static synthetic lambda$hidePostCaptureAlert$3(Lcom/android/camera/protocol/protocols/ReferenceLineProtocol;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "it"
        }
    .end annotation

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/ReferenceLineProtocol;->updateReferenceGradienterSwitched()V

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/ReferenceLineProtocol;->updateCenterMarkSwitched()V

    return-void
.end method

.method private synthetic lambda$onReviewDoneClicked$4()V
    .locals 2

    iget-object p0, p0, Lcom/android/camera/module/image/ImageActionImpl;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Camera2Module;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/IUserEventMgr;->enableCameraControls(Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->doAttach()V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/camera/module/common/IUserEventMgr;->enableCameraControls(Z)V

    return-void
.end method

.method public static synthetic lambda$onShutterButtonClick$1(Lcom/android/camera/protocol/protocols/TopAlert;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "it"
        }
    .end annotation

    const-string/jumbo v0, "speech_shutter_desc"

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/TopAlert;->hideRecommendDescTip(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$onShutterButtonLongClick$0(Lcom/android/camera/protocol/protocols/MainContentProtocol;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "p"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->setFocusViewType(Z)V

    return-void
.end method

.method private logPerfInfoOnShutter(Lcom/android/camera/module/Camera2Module;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "module"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onShutterButtonClick "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ImageActionImpl"

    invoke-static {v1, p0}, LOooO0OO/OooO0O0/OooO0OO/OooO0o;->OooO0oo(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, LOooO0OO/OooO0O0/OooO0OO/OooO0o;->OooO0oO(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object p0

    const-string v0, "algo_prepare_capture"

    const-string/jumbo v1, "shot_prepare_capture"

    const-string/jumbo v2, "shot_2_shot"

    const-string/jumbo v3, "shot_2_gallery"

    const-string/jumbo v4, "shot_create_thumbnail"

    const-string/jumbo v5, "shot_on_shutter"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/performance/PerformanceManager;->startAction([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/image/ImageActionImpl;->lambda$onReviewDoneClicked$4()V

    return-void
.end method

.method public checkForDownCapture()V
    .locals 7

    iget-object p0, p0, Lcom/android/camera/module/image/ImageActionImpl;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Camera2Module;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getImageModuleState()Lcom/android/camera/module/image/ImageModuleStateManager;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/camera/module/image/ImageModuleStateManager;->mCaptureDownTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v4, "ImageActionImpl"

    const-string/jumbo v5, "onShutterButtonLongClickCancel: notify cancel"

    invoke-static {v4, v5, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mCaptureButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getImageModuleState()Lcom/android/camera/module/image/ImageModuleStateManager;

    move-result-object v5

    iget-wide v5, v5, Lcom/android/camera/module/image/ImageModuleStateManager;->mCaptureDownTime:J

    invoke-virtual {v1, v5, v6}, Lcom/android/camera/module/loader/camera2/ButtonStatus;->notifyButtonCancel(J)V

    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mCaptureButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/ButtonStatus;->getFocusStatus()I

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "onShutterButtonLongClickCancel: reset button status"

    invoke-static {v4, v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getImageModuleState()Lcom/android/camera/module/image/ImageModuleStateManager;

    move-result-object v0

    iput-wide v2, v0, Lcom/android/camera/module/image/ImageModuleStateManager;->mCaptureDownTime:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/Camera2Module;->mCaptureButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->setButtonStatus(Lcom/android/camera/module/loader/camera2/ButtonStatus;)V

    goto :goto_0

    :cond_1
    new-array p0, v0, [Ljava/lang/Object;

    const-string/jumbo v0, "onShutterButtonLongClickCancel: button status focusing"

    invoke-static {v4, v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public checkWhenLongClick()Z
    .locals 9

    iget-object v0, p0, Lcom/android/camera/module/image/ImageActionImpl;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/module/image/ImageActionImpl;->mCancelDownCaptureOnLongClick:Z

    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->getImageModuleState()Lcom/android/camera/module/image/ImageModuleStateManager;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/camera/module/image/ImageModuleStateManager;->mCaptureDownTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    const-string v6, "ImageActionImpl"

    if-lez v2, :cond_2

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v7, "onShutterButtonLongClick notifyCancel"

    invoke-static {v6, v7, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/android/camera/module/Camera2Module;->mCaptureButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->getImageModuleState()Lcom/android/camera/module/image/ImageModuleStateManager;

    move-result-object v7

    iget-wide v7, v7, Lcom/android/camera/module/image/ImageModuleStateManager;->mCaptureDownTime:J

    invoke-virtual {v2, v7, v8}, Lcom/android/camera/module/loader/camera2/ButtonStatus;->notifyButtonCancel(J)V

    iget-object v2, v0, Lcom/android/camera/module/Camera2Module;->mCaptureButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    invoke-virtual {v2}, Lcom/android/camera/module/loader/camera2/ButtonStatus;->getFocusStatus()I

    move-result v2

    if-ne v2, v3, :cond_1

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v7, "onShutterButtonLongClick: reset button status"

    invoke-static {v6, v7, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->getImageModuleState()Lcom/android/camera/module/image/ImageModuleStateManager;

    move-result-object v2

    iput-wide v4, v2, Lcom/android/camera/module/image/ImageModuleStateManager;->mCaptureDownTime:J

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/camera/module/Camera2Module;->mCaptureButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->setButtonStatus(Lcom/android/camera/module/loader/camera2/ButtonStatus;)V

    iput-boolean v3, p0, Lcom/android/camera/module/image/ImageActionImpl;->mCancelDownCaptureOnLongClick:Z

    goto :goto_0

    :cond_1
    new-array p0, v1, [Ljava/lang/Object;

    const-string/jumbo v0, "onShutterButtonLongClick: button status focusing"

    invoke-static {v6, v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-array p0, v1, [Ljava/lang/Object;

    const-string/jumbo v0, "onShutterButtonLongClick: not down capture"

    invoke-static {v6, v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/camera/protocol/protocols/utils/RunningStateUtil;->isDoingAction()Z

    move-result p0

    if-eqz p0, :cond_3

    new-array p0, v1, [Ljava/lang/Object;

    const-string/jumbo v0, "onShutterButtonLongClick: doing action"

    invoke-static {v6, v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_3
    :goto_0
    return v1
.end method

.method public needMixQuickShot()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/camera/module/image/ImageActionImpl;->mShotClickTimeInterval:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    const-wide/16 v2, 0x1f4

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onReviewCancelClicked()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/image/ImageActionImpl;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/camera/module/Camera2Module;->mKeepCoverView:Z

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getAppStateMgr()Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->isSelectingCapturedResult()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/image/ImageActionImpl;->hidePostCaptureAlert()V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v2, p0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v1}, Lcom/android/camera/Camera;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onReviewDoneClicked()V
    .locals 2

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    new-instance v1, LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO0O00o0/OooOo00;

    invoke-direct {v1, p0}, LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO0O00o0/OooOo00;-><init>(Lcom/android/camera/module/image/ImageActionImpl;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public onShutterButtonCancel(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/module/image/ImageActionImpl;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Camera2Module;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getImageModuleState()Lcom/android/camera/module/image/ImageModuleStateManager;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/camera/module/image/ImageModuleStateManager;->mCaptureDownTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    const/4 v0, 0x0

    const-string v1, "ImageActionImpl"

    if-eqz p1, :cond_1

    new-array p1, v0, [Ljava/lang/Object;

    const-string/jumbo v4, "onShutterButtonCancel: notify up"

    invoke-static {v1, v4, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera/module/Camera2Module;->mCaptureButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getImageModuleState()Lcom/android/camera/module/image/ImageModuleStateManager;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/camera/module/image/ImageModuleStateManager;->mCaptureDownTime:J

    invoke-virtual {p1, v4, v5}, Lcom/android/camera/module/loader/camera2/ButtonStatus;->notifyButtonUp(J)V

    goto :goto_0

    :cond_1
    new-array p1, v0, [Ljava/lang/Object;

    const-string/jumbo v4, "onShutterButtonCancel: notify cancel"

    invoke-static {v1, v4, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera/module/Camera2Module;->mCaptureButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getImageModuleState()Lcom/android/camera/module/image/ImageModuleStateManager;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/camera/module/image/ImageModuleStateManager;->mCaptureDownTime:J

    invoke-virtual {p1, v4, v5}, Lcom/android/camera/module/loader/camera2/ButtonStatus;->notifyButtonCancel(J)V

    :goto_0
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module;->mCaptureButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/ButtonStatus;->getFocusStatus()I

    move-result p1

    const/4 v4, 0x1

    if-ne p1, v4, :cond_2

    new-array p1, v0, [Ljava/lang/Object;

    const-string/jumbo v0, "onShutterButtonCancel: reset button status"

    invoke-static {v1, v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getImageModuleState()Lcom/android/camera/module/image/ImageModuleStateManager;

    move-result-object p1

    iput-wide v2, p1, Lcom/android/camera/module/image/ImageModuleStateManager;->mCaptureDownTime:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera/module/Camera2Module;->mCaptureButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera2/Camera2Proxy;->setButtonStatus(Lcom/android/camera/module/loader/camera2/ButtonStatus;)V

    goto :goto_1

    :cond_2
    new-array p0, v0, [Ljava/lang/Object;

    const-string/jumbo p1, "onShutterButtonCancel: button status focusing"

    invoke-static {v1, p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onShutterButtonClick(I)Z
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/image/ImageActionImpl;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onShutterButtonClick trigger mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " downTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->getImageModuleState()Lcom/android/camera/module/image/ImageModuleStateManager;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/camera/module/image/ImageModuleStateManager;->mCaptureDownTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "ImageActionImpl"

    invoke-static {v5, v3, v4}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v3, 0x8c

    const/4 v4, 0x1

    if-eq p1, v3, :cond_3

    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->getImageModuleState()Lcom/android/camera/module/image/ImageModuleStateManager;

    move-result-object v3

    iget-wide v6, v3, Lcom/android/camera/module/image/ImageModuleStateManager;->mCaptureDownTime:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_3

    new-array p0, v1, [Ljava/lang/Object;

    const-string/jumbo p1, "onShutterButtonClick: notify up"

    invoke-static {v5, p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, v0, Lcom/android/camera/module/Camera2Module;->mCaptureButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->getImageModuleState()Lcom/android/camera/module/image/ImageModuleStateManager;

    move-result-object p1

    iget-wide v6, p1, Lcom/android/camera/module/image/ImageModuleStateManager;->mCaptureDownTime:J

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/module/loader/camera2/ButtonStatus;->notifyButtonUp(J)V

    iget-object p0, v0, Lcom/android/camera/module/Camera2Module;->mCaptureButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/ButtonStatus;->getFocusStatus()I

    move-result p0

    if-ne p0, v4, :cond_2

    new-array p0, v1, [Ljava/lang/Object;

    const-string/jumbo p1, "onShutterButtonClick: reset button status"

    invoke-static {v5, p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->getImageModuleState()Lcom/android/camera/module/image/ImageModuleStateManager;

    move-result-object p0

    iput-wide v8, p0, Lcom/android/camera/module/image/ImageModuleStateManager;->mCaptureDownTime:J

    const/4 p0, 0x0

    iput-object p0, v0, Lcom/android/camera/module/Camera2Module;->mCaptureButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/camera2/Camera2Proxy;->setButtonStatus(Lcom/android/camera/module/loader/camera2/ButtonStatus;)V

    goto :goto_0

    :cond_2
    new-array p0, v1, [Ljava/lang/Object;

    const-string/jumbo p1, "onShutterButtonClick: button status focusing"

    invoke-static {v5, p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v1

    :cond_3
    const-wide/16 v6, 0x0

    const/4 v8, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, LOooO0OO/OooO0O0/OooO0OO/OooO0o;->OooO0OO(JIJLjava/lang/String;)V

    const/16 v3, 0x64

    if-eq p1, v3, :cond_5

    const/16 v3, 0x6e

    if-eq p1, v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/Camera;->onUserInteraction()V

    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl()Ljava/util/Optional;

    move-result-object v3

    sget-object v6, LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO0O00o0/OooOo;->o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO0O00o0/OooOo;

    invoke-virtual {v3, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/Camera;->onUserInteraction()V

    :goto_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TimeBurstProtocol;->impl()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v6

    if-nez v6, :cond_6

    return v1

    :cond_6
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v6

    invoke-static {v6}, Lcom/android/camera/timerburst/TimerBurstManager;->isTimerBurstOn(I)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/camera/data/data/config/ComponentManuallyET;->isLongExpose(I)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {}, Lcom/android/camera/protocol/protocols/RecordState;->impl()Ljava/util/Optional;

    move-result-object v6

    sget-object v7, LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO0O00o0/o0000O;->o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO0O00o0/o0000O;

    invoke-virtual {v6, v7}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_7
    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/protocols/TimeBurstProtocol;

    invoke-interface {v3, p1}, Lcom/android/camera/protocol/protocols/TimeBurstProtocol;->startTimerBurst(I)Z

    move-result v3

    if-eqz v3, :cond_8

    return v1

    :cond_8
    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->checkShutterCondition()Z

    move-result v3

    if-nez v3, :cond_9

    return v1

    :cond_9
    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMiviSatSuperNightSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, v0, Lcom/android/camera/module/Camera2Module;->mNightManager:Lcom/android/camera/module/image/NightManager;

    invoke-virtual {v3}, Lcom/android/camera/module/image/NightManager;->isLLSNeeded()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSuperNightOn()Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_a
    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v3

    const/4 v6, 0x3

    if-eq v3, v6, :cond_b

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/camera2/Camera2Proxy;->isCaptureBusy(Z)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_b
    new-array p0, v1, [Ljava/lang/Object;

    const-string/jumbo p1, "startNormalCapture : Capture in progress, block night shot"

    invoke-static {v5, p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_c
    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/Camera2Proxy;->isNeedFlashOn()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/Camera2Proxy;->getMiCamera2ShotQueueSize()I

    move-result v3

    if-lez v3, :cond_d

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Block flash shot MiCamera2ShotQueueSize:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getMiCamera2ShotQueueSize()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v5, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_d
    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/Camera2Proxy;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/android/camera2/CameraConfigs;->setShutterTimestamp(J)V

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setTriggerMode(I)V

    invoke-direct {p0, v0}, Lcom/android/camera/module/image/ImageActionImpl;->logPerfInfoOnShutter(Lcom/android/camera/module/Camera2Module;)V

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, v1, p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->prepareCapture(ZI)V

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->doSnap(I)V

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->isFocusingSnapOnFinish()Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/android/camera/module/common/IUserEventMgr;->enableCameraControls(Z)V

    :cond_e
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object p0

    new-array p1, p1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "algo_capture_total_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->getImageModuleState()Lcom/android/camera/module/image/ImageModuleStateManager;

    move-result-object v3

    iget-wide v5, v3, Lcom/android/camera/module/image/ImageModuleStateManager;->mCaptureStartTime:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shot_2_view_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->getImageModuleState()Lcom/android/camera/module/image/ImageModuleStateManager;

    move-result-object v0

    iget-wide v2, v0, Lcom/android/camera/module/image/ImageModuleStateManager;->mCaptureStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v4

    invoke-virtual {p0, p1}, Lcom/android/camera/performance/PerformanceManager;->startAction([Ljava/lang/String;)V

    return v4
.end method

.method public onShutterButtonLongClick()Z
    .locals 5

    iget-object v0, p0, Lcom/android/camera/module/image/ImageActionImpl;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/image/ImageActionImpl;->checkWhenLongClick()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isSatFallback()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->shouldCheckSatFallbackState()Z

    move-result v2

    if-eqz v2, :cond_2

    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "ImageActionImpl"

    const-string/jumbo v2, "onShutterButtonLongClick: sat fallback"

    invoke-static {v0, v2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v2

    const/16 v3, 0xa3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_3

    return v4

    :cond_3
    iput-boolean v4, p0, Lcom/android/camera/module/image/ImageActionImpl;->mLongPressedAutoFocus:Z

    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object p0

    sget-object v2, LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO0O00o0/OooOOO;->o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO0O00o0/OooOOO;

    invoke-virtual {p0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->unlockAEAF()V

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->requestAutoFocus()V

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    return v1
.end method

.method public onShutterButtonLongClickCancel(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/image/ImageActionImpl;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/image/ImageActionImpl;->checkForDownCapture()V

    iget-boolean v1, p0, Lcom/android/camera/module/image/ImageActionImpl;->mLongPressedAutoFocus:Z

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lcom/android/camera/module/image/ImageActionImpl;->onShutterButtonClick(I)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/module/image/ImageActionImpl;->mLongPressedAutoFocus:Z

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->cancelLongPressedAutoFocus()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, Lcom/android/camera/module/image/ImageActionImpl;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/Camera2Module;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p1, Lcom/android/camera/module/Camera2Module;->mWaitSaveFinish:Z

    const/4 v1, 0x0

    const-string v2, "ImageActionImpl"

    if-eqz v0, :cond_1

    new-array p0, v1, [Ljava/lang/Object;

    const-string/jumbo p1, "onThumbnailClicked: CannotGotoGallery...mWaitSaveFinish"

    invoke-static {v2, p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p1, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    iget-boolean v0, v0, Lcom/android/camera/module/image/hdr/ParallelManager;->mEnableParallelSession:Z

    if-nez v0, :cond_3

    iget-boolean v0, p1, Lcom/android/camera/module/Camera2Module;->mEnableShot2Gallery:Z

    if-nez v0, :cond_3

    iget-boolean v0, p1, Lcom/android/camera/module/Camera2Module;->mSupportAnchorFrameAsThumbnail:Z

    if-nez v0, :cond_3

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v0

    invoke-virtual {v0}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00ooOO0()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/protocols/utils/RunningStateUtil;->isDoingAction()Z

    move-result p0

    if-eqz p0, :cond_4

    new-array p0, v1, [Ljava/lang/Object;

    const-string/jumbo p1, "onThumbnailClicked: DoingAction.."

    invoke-static {v2, p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/camera/module/image/ImageActionImpl;->isCannotGotoGallery(Lcom/android/camera/module/Camera2Module;)Z

    move-result p0

    if-eqz p0, :cond_4

    new-array p0, v1, [Ljava/lang/Object;

    const-string/jumbo p1, "onThumbnailClicked: CannotGotoGallery..."

    invoke-static {v2, p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->gotoGallery()V

    return-void
.end method

.method public onTouchDownEvent()V
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "quickshot | snap click -> click at %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ImageActionImpl"

    invoke-static {v4, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/android/camera/module/image/ImageActionImpl;->mLastShotClickTime:J

    const-wide/16 v8, -0x1

    cmp-long v3, v6, v8

    if-eqz v3, :cond_0

    sub-long v6, v0, v6

    iput-wide v6, p0, Lcom/android/camera/module/image/ImageActionImpl;->mShotClickTimeInterval:J

    :cond_0
    iput-wide v0, p0, Lcom/android/camera/module/image/ImageActionImpl;->mLastShotClickTime:J

    new-array v0, v2, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/android/camera/module/image/ImageActionImpl;->mShotClickTimeInterval:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v0, v5

    const-string/jumbo p0, "quickshot | click event -> clickTimeInterval: %s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v4, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public registerProtocol()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/CameraAction;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/CameraAction;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method
