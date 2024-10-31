.class public Lcom/android/camera/module/loader/base/FunctionUISetup;
.super Lcom/android/camera/module/loader/base/Func1Base;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/module/loader/base/Func1Base<",
        "Lcom/android/camera/module/Module;",
        "Lcom/android/camera/module/Module;",
        ">;"
    }
.end annotation


# instance fields
.field private mNeedNotifyUI:Z

.field private mTargetDataChangeType:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "targetMode",
            "targetDataChangeType"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/camera/module/loader/base/Func1Base;-><init>(I)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/camera/module/loader/base/FunctionUISetup;->mTargetDataChangeType:I

    iput-boolean p1, p0, Lcom/android/camera/module/loader/base/FunctionUISetup;->mNeedNotifyUI:Z

    iput p2, p0, Lcom/android/camera/module/loader/base/FunctionUISetup;->mTargetDataChangeType:I

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "currentMode",
            "needNotifyUI"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/camera/module/loader/base/Func1Base;-><init>(I)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/camera/module/loader/base/FunctionUISetup;->mTargetDataChangeType:I

    iput-boolean p2, p0, Lcom/android/camera/module/loader/base/FunctionUISetup;->mNeedNotifyUI:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/camera/module/loader/base/NullHolder;)Lcom/android/camera/module/loader/base/NullHolder;
    .locals 9
    .param p1    # Lcom/android/camera/module/loader/base/NullHolder;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "baseModuleNullHolder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/module/loader/base/NullHolder<",
            "Lcom/android/camera/module/Module;",
            ">;)",
            "Lcom/android/camera/module/loader/base/NullHolder<",
            "Lcom/android/camera/module/Module;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v0

    const-string/jumbo v1, "switch_ui_setup"

    invoke-virtual {v0, v1}, Lcom/android/camera/performance/PerformanceManager;->startAction(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/camera/module/loader/base/NullHolder;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-interface {p1}, Lcom/android/camera/module/loader/base/NullHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isDeparted()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 p0, 0xe1

    invoke-static {v0, p0}, Lcom/android/camera/module/loader/base/WeakNullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/base/WeakNullHolder;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isCreated()Z

    move-result v2

    if-nez v2, :cond_2

    return-object p1

    :cond_2
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getActivity()Lcom/android/camera/Camera;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/module/loader/base/Func1Base;->mTargetMode:I

    invoke-virtual {v2, v3}, Lcom/android/camera/Camera;->showGuide(I)V

    invoke-static {}, Lcom/android/camera/Util;->getCameraPreviewRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/android/camera/module/common/IUserEventMgr;->onPreviewLayoutChanged(Landroid/graphics/Rect;)V

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getActivity()Lcom/android/camera/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/android/camera/CameraScreenNail;->getExternalFrameProcessor()Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lcom/android/camera/CameraScreenNail;->isExternalFrameFit()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4, v3}, Lcom/android/camera/CameraScreenNail;->setExternalFrameRect(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_3
    invoke-static {v2}, Lcom/android/camera/display/device/ScreenOrientationManager;->transformRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraScreenNail;->setExternalFrameRect(Landroid/graphics/Rect;)V

    :cond_4
    :goto_0
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-interface {v4, v5, v6}, Lcom/android/camera/module/common/IUserEventMgr;->onPreviewSizeChanged(II)V

    invoke-static {}, Lcom/android/camera/protocol/protocols/BaseDelegate;->impl2()Lcom/android/camera/protocol/protocols/BaseDelegate;

    move-result-object v4

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/global/DataItemGlobal;->getLastCameraId()I

    move-result v5

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v6

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v7

    iget v8, p0, Lcom/android/camera/module/loader/base/FunctionUISetup;->mTargetDataChangeType:I

    if-eq v5, v6, :cond_5

    const/4 v8, 0x2

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->getLastUiStyle()I

    move-result v5

    if-eq v5, v7, :cond_6

    const/4 v8, 0x3

    :cond_6
    :goto_1
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v5

    invoke-interface {v5, v2, v3, v7}, Lcom/android/camera/module/common/IUserEventMgr;->setRectAndUIStyle(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    iget-boolean v2, p0, Lcom/android/camera/module/loader/base/FunctionUISetup;->mNeedNotifyUI:Z

    if-eqz v2, :cond_7

    if-eqz v4, :cond_7

    invoke-interface {v4}, Lcom/android/camera/protocol/protocols/BaseDelegate;->getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;

    move-result-object v2

    iget p0, p0, Lcom/android/camera/module/loader/base/Func1Base;->mTargetMode:I

    invoke-virtual {v2, v8, p0}, Lcom/android/camera/animation/AnimationComposite;->notifyDataChanged(II)V

    :cond_7
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl2()Lcom/android/camera/protocol/protocols/MainContentProtocol;

    move-result-object v2

    if-eqz v2, :cond_8

    iget v3, p0, Lcom/android/camera/CameraSize;->width:I

    iget p0, p0, Lcom/android/camera/CameraSize;->height:I

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v3, p0, v0}, Lcom/android/camera/CameraSettings;->getPreviewAspectRatio(IILcom/android/camera2/CameraCapabilities;)F

    move-result p0

    invoke-interface {v2, p0}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->setPreviewAspectRatio(F)V

    :cond_8
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "baseModuleNullHolder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/android/camera/module/loader/base/NullHolder;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/base/FunctionUISetup;->apply(Lcom/android/camera/module/loader/base/NullHolder;)Lcom/android/camera/module/loader/base/NullHolder;

    move-result-object p0

    return-object p0
.end method
