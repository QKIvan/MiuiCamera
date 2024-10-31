.class public Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable$3;
.super Lmiuix/view/animation/CubicEaseOutInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->stopTouchUpAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

.field public final synthetic val$isTouchAnimator:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$isTouchAnimator"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable$3;->this$0:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    iput-boolean p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable$3;->val$isTouchAnimator:Z

    invoke-direct {p0}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    invoke-super {p0, p1}, Lmiuix/view/animation/CubicEaseOutInterpolator;->getInterpolation(F)F

    move-result p1

    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable$3;->this$0:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    invoke-static {v0}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->access$000(Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;)Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable$3;->val$isTouchAnimator:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/ui/drawable/zoom/BaseCameraZoomAdjustPaint;->updateSliderPositionForBackAnim(FZ)V

    iget-object p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable$3;->this$0:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return p1
.end method
