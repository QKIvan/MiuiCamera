.class public Lcom/android/camera/Camera$3;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/android/camera/module/loader/base/NullHolder<",
        "Lcom/android/camera/module/Module;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/Camera$3;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/camera/module/loader/base/NullHolder;)V
    .locals 5
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
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v0

    const-string/jumbo v1, "switch_setup_consumer"

    invoke-virtual {v0, v1}, Lcom/android/camera/performance/PerformanceManager;->startAction(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/camera/module/loader/base/NullHolder;->isPresent()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera$3;->this$0:Lcom/android/camera/Camera;

    invoke-interface {p1}, Lcom/android/camera/module/loader/base/NullHolder;->getException()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/camera/Camera;->access$200(Lcom/android/camera/Camera;I)V

    iget-object p1, p0, Lcom/android/camera/Camera$3;->this$0:Lcom/android/camera/Camera;

    iput-object v2, p1, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    iput-object v2, p1, Lcom/android/camera/ActivityBase;->mCurrentModeUI:Lcom/android/camera/fragment/modeui/IModeUI;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera$3;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/camera/module/loader/base/NullHolder;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/Module;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6GestureRecognizer;->setCurrentModule(Lcom/android/camera/module/Module;)V

    :goto_0
    iget-object p1, p0, Lcom/android/camera/Camera$3;->this$0:Lcom/android/camera/Camera;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/ActivityBase;->setSwitchingModule(Z)V

    iget-object p1, p0, Lcom/android/camera/Camera$3;->this$0:Lcom/android/camera/Camera;

    iget-object p1, p1, Lcom/android/camera/ActivityBase;->mRenderEngine:Lcom/android/camera/ui/RenderEngineInterface;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/camera/ui/RenderEngineInterface;->resetFrameAvailableFlag()V

    :cond_1
    invoke-static {}, Lcom/xiaomi/camera/util/ThreadUtils;->assertMainThread()V

    iget-object p1, p0, Lcom/android/camera/Camera$3;->this$0:Lcom/android/camera/Camera;

    invoke-static {p1, v2}, Lcom/android/camera/Camera;->access$302(Lcom/android/camera/Camera;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataCloudMgr()Lcom/android/camera/data/cloud/DataCloud$CloudManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/data/cloud/DataCloud$CloudManager;->fillCloudValues()V

    iget-object p1, p0, Lcom/android/camera/Camera$3;->this$0:Lcom/android/camera/Camera;

    invoke-static {p1}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/AutoLockManager;->hibernateDelayed()V

    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraParallelProcessEnable()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->trimPoolBuffer()V

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getHalPoolInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->trimPoolBuffer()V

    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/protocols/MultiFeatureManager;->impl2()Lcom/android/camera/protocol/protocols/MultiFeatureManager;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/MultiFeatureManager;->init()V

    iget-object p1, p0, Lcom/android/camera/Camera$3;->this$0:Lcom/android/camera/Camera;

    iget-object p1, p1, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    const-wide/16 v3, 0x3e8

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->getMoreModeStyle()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_4

    invoke-static {}, Lcom/android/camera/protocol/protocols/MoreModePopupController;->impl2()Lcom/android/camera/protocol/protocols/MoreModePopupController;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/android/camera/Camera$3;->this$0:Lcom/android/camera/Camera;

    const v3, 0x7f0a0403

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/PopupMenuLayout;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTab()Lcom/android/camera2/compat/theme/common/MiThemeOperationTabIf;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTabIf;->getPopupMenuDragListener(Lcom/android/camera/ui/PopupMenuLayout;)Lcom/android/camera/ui/DragLayout$OnDragListener;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/android/camera/protocol/protocols/MoreModePopupController;->addOnDragListener(Lcom/android/camera/ui/DragLayout$OnDragListener;)V

    :cond_4
    iget-object p0, p0, Lcom/android/camera/Camera$3;->this$0:Lcom/android/camera/Camera;

    invoke-static {p0}, Lcom/android/camera/Camera;->access$400(Lcom/android/camera/Camera;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "CameraSetupConsumer#accept: switch module done"

    invoke-static {p0, v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
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

    invoke-virtual {p0, p1}, Lcom/android/camera/Camera$3;->accept(Lcom/android/camera/module/loader/base/NullHolder;)V

    return-void
.end method
