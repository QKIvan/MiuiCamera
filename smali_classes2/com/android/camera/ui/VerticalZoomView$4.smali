.class public Lcom/android/camera/ui/VerticalZoomView$4;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/VerticalZoomView;->startScrollAnimator(FII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/VerticalZoomView;

.field public final synthetic val$selectPointY:F


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/VerticalZoomView;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$selectPointY"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/ui/VerticalZoomView$4;->this$0:Lcom/android/camera/ui/VerticalZoomView;

    iput p2, p0, Lcom/android/camera/ui/VerticalZoomView$4;->val$selectPointY:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/camera/ui/VerticalZoomView$4;->this$0:Lcom/android/camera/ui/VerticalZoomView;

    invoke-static {p1}, Lcom/android/camera/ui/VerticalZoomView;->access$300(Lcom/android/camera/ui/VerticalZoomView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object p1, p0, Lcom/android/camera/ui/VerticalZoomView$4;->this$0:Lcom/android/camera/ui/VerticalZoomView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/camera/ui/VerticalZoomView;->access$202(Lcom/android/camera/ui/VerticalZoomView;Z)Z

    iget-object p0, p0, Lcom/android/camera/ui/VerticalZoomView$4;->this$0:Lcom/android/camera/ui/VerticalZoomView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/camera/ui/VerticalZoomView$4;->this$0:Lcom/android/camera/ui/VerticalZoomView;

    invoke-static {p1}, Lcom/android/camera/ui/VerticalZoomView;->access$300(Lcom/android/camera/ui/VerticalZoomView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object p1, p0, Lcom/android/camera/ui/VerticalZoomView$4;->this$0:Lcom/android/camera/ui/VerticalZoomView;

    iget v0, p0, Lcom/android/camera/ui/VerticalZoomView$4;->val$selectPointY:F

    iput v0, p1, Lcom/android/camera/ui/VerticalZoomView;->mSelectPointY:F

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/camera/ui/VerticalZoomView;->access$202(Lcom/android/camera/ui/VerticalZoomView;Z)Z

    iget-object p0, p0, Lcom/android/camera/ui/VerticalZoomView$4;->this$0:Lcom/android/camera/ui/VerticalZoomView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
