.class public Lcom/android/camera/ui/drawable/snap/SuspendShutterAnimateDrawable$3;
.super Lmiuix/view/animation/ExponentialEaseOutInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/drawable/snap/SuspendShutterAnimateDrawable;->startScaleUpAnimation(JLandroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/drawable/snap/SuspendShutterAnimateDrawable;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/drawable/snap/SuspendShutterAnimateDrawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/SuspendShutterAnimateDrawable$3;->this$0:Lcom/android/camera/ui/drawable/snap/SuspendShutterAnimateDrawable;

    invoke-direct {p0}, Lmiuix/view/animation/ExponentialEaseOutInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    invoke-super {p0, p1}, Lmiuix/view/animation/ExponentialEaseOutInterpolator;->getInterpolation(F)F

    move-result p1

    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/SuspendShutterAnimateDrawable$3;->this$0:Lcom/android/camera/ui/drawable/snap/SuspendShutterAnimateDrawable;

    invoke-static {v0}, Lcom/android/camera/ui/drawable/snap/SuspendShutterAnimateDrawable;->access$000(Lcom/android/camera/ui/drawable/snap/SuspendShutterAnimateDrawable;)Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->updateValue(F)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/SuspendShutterAnimateDrawable$3;->this$0:Lcom/android/camera/ui/drawable/snap/SuspendShutterAnimateDrawable;

    invoke-static {v0}, Lcom/android/camera/ui/drawable/snap/SuspendShutterAnimateDrawable;->access$200(Lcom/android/camera/ui/drawable/snap/SuspendShutterAnimateDrawable;)Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->updateValue(F)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/SuspendShutterAnimateDrawable$3;->this$0:Lcom/android/camera/ui/drawable/snap/SuspendShutterAnimateDrawable;

    invoke-static {v0}, Lcom/android/camera/ui/drawable/snap/SuspendShutterAnimateDrawable;->access$500(Lcom/android/camera/ui/drawable/snap/SuspendShutterAnimateDrawable;)Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;

    move-result-object v0

    iget v0, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/SuspendShutterAnimateDrawable$3;->this$0:Lcom/android/camera/ui/drawable/snap/SuspendShutterAnimateDrawable;

    invoke-static {v0}, Lcom/android/camera/ui/drawable/snap/SuspendShutterAnimateDrawable;->access$500(Lcom/android/camera/ui/drawable/snap/SuspendShutterAnimateDrawable;)Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->updateValue(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/SuspendShutterAnimateDrawable$3;->this$0:Lcom/android/camera/ui/drawable/snap/SuspendShutterAnimateDrawable;

    invoke-static {v0}, Lcom/android/camera/ui/drawable/snap/SuspendShutterAnimateDrawable;->access$300(Lcom/android/camera/ui/drawable/snap/SuspendShutterAnimateDrawable;)Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->updateValue(F)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/SuspendShutterAnimateDrawable$3;->this$0:Lcom/android/camera/ui/drawable/snap/SuspendShutterAnimateDrawable;

    invoke-static {v0}, Lcom/android/camera/ui/drawable/snap/SuspendShutterAnimateDrawable;->access$400(Lcom/android/camera/ui/drawable/snap/SuspendShutterAnimateDrawable;)Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->updateValue(F)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/SuspendShutterAnimateDrawable$3;->this$0:Lcom/android/camera/ui/drawable/snap/SuspendShutterAnimateDrawable;

    invoke-static {v0}, Lcom/android/camera/ui/drawable/snap/SuspendShutterAnimateDrawable;->access$100(Lcom/android/camera/ui/drawable/snap/SuspendShutterAnimateDrawable;)Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->updateValue(F)V

    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/SuspendShutterAnimateDrawable$3;->this$0:Lcom/android/camera/ui/drawable/snap/SuspendShutterAnimateDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return p1
.end method
