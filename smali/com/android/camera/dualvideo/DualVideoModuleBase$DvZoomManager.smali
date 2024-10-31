.class public Lcom/android/camera/dualvideo/DualVideoModuleBase$DvZoomManager;
.super Lcom/android/camera/zoom/ZoomManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/dualvideo/DualVideoModuleBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DvZoomManager"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;


# direct methods
.method public constructor <init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;Lcom/android/camera/module/Module;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "module"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase$DvZoomManager;->this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    invoke-direct {p0, p2}, Lcom/android/camera/zoom/ZoomManager;-><init>(Lcom/android/camera/module/Module;)V

    return-void
.end method

.method public static synthetic lambda$applyZoomRatio$0(Lcom/android/camera/dualvideo/DualVideoModuleBase;Lcom/android/camera2/Camera2Proxy;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "rec$",
            "x$0"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->access$100(Lcom/android/camera/dualvideo/DualVideoModuleBase;Lcom/android/camera2/Camera2Proxy;)V

    return-void
.end method


# virtual methods
.method public applyZoomRatio()V
    .locals 2

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v0

    invoke-virtual {v0}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00o0oo0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/camera/zoom/ZoomManager;->applyZoomRatio()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase$DvZoomManager;->this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase$DvZoomManager;->this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->access$100(Lcom/android/camera/dualvideo/DualVideoModuleBase;Lcom/android/camera2/Camera2Proxy;)V

    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase$DvZoomManager;->this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase$DvZoomManager;->this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    new-instance v1, LOooO0OO/OooO0O0/OooO00o/o00O0OOo/o0O0O00;

    invoke-direct {v1, p0}, LOooO0OO/OooO0O0/OooO00o/o00O0OOo/o0O0O00;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    :goto_0
    return-void
.end method
