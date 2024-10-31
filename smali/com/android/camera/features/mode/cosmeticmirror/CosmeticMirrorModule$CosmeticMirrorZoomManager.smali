.class public Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule$CosmeticMirrorZoomManager;
.super Lcom/android/camera/zoom/ZoomManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CosmeticMirrorZoomManager"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule;Lcom/android/camera/module/Module;)V
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

    iput-object p1, p0, Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule$CosmeticMirrorZoomManager;->this$0:Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule;

    invoke-direct {p0, p2}, Lcom/android/camera/zoom/ZoomManager;-><init>(Lcom/android/camera/module/Module;)V

    return-void
.end method

.method public static synthetic lambda$onZoomingActionUpdate$0(FLcom/android/camera/features/mode/cosmeticmirror/protocol/CosmeticMirrorProtocol;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "zoomRatio",
            "protocol"
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/android/camera/features/mode/cosmeticmirror/protocol/CosmeticMirrorProtocol;->setSeekBarByZoom(F)V

    return-void
.end method


# virtual methods
.method public initZoomForFrontCamera()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule$CosmeticMirrorZoomManager;->this$0:Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getMaxZoomRatio(Lcom/android/camera2/CameraCapabilities;)F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/zoom/ZoomManager;->setZoomRangeWithUI(FF)V

    return-void
.end method

.method public onZoomingActionUpdate(FI)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "zoomRatio",
            "action"
        }
    .end annotation

    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    invoke-static {}, Lcom/android/camera/features/mode/cosmeticmirror/protocol/CosmeticMirrorProtocol;->impl()Ljava/util/Optional;

    move-result-object p2

    new-instance v1, LOooO0OO/OooO0O0/OooO00o/o00O0Oo/OooO00o/OooO0Oo/o0O0O00;

    invoke-direct {v1, p1}, LOooO0OO/OooO0O0/OooO00o/o00O0Oo/OooO00o/OooO0Oo/o0O0O00;-><init>(F)V

    invoke-virtual {p2, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    invoke-super {p0, p1, v0}, Lcom/android/camera/zoom/ZoomManager;->onZoomingActionUpdate(FI)Z

    move-result p0

    return p0
.end method
