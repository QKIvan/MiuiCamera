.class public Lcom/android/camera/ui/FaceView$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/FaceView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/FaceView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/ui/FaceView$1;->this$0:Lcom/android/camera/ui/FaceView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq p1, v0, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/FaceView$1;->this$0:Lcom/android/camera/ui/FaceView;

    invoke-static {p0}, Lcom/android/camera/ui/FaceView;->access$400(Lcom/android/camera/ui/FaceView;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/FaceView$1;->this$0:Lcom/android/camera/ui/FaceView;

    invoke-static {p1}, Lcom/android/camera/ui/FaceView;->access$100(Lcom/android/camera/ui/FaceView;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/ui/FaceView$1;->this$0:Lcom/android/camera/ui/FaceView;

    invoke-static {p1}, Lcom/android/camera/ui/FaceView;->access$300(Lcom/android/camera/ui/FaceView;)Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;->setVisible(I)V

    iget-object p0, p0, Lcom/android/camera/ui/FaceView$1;->this$0:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/camera/ui/FaceView$1;->this$0:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FaceView;->setFaceRectVisible(I)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/camera/ui/FaceView$1;->this$0:Lcom/android/camera/ui/FaceView;

    invoke-static {p0}, Lcom/android/camera/ui/FaceView;->access$200(Lcom/android/camera/ui/FaceView;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/android/camera/ui/FaceView$1;->this$0:Lcom/android/camera/ui/FaceView;

    invoke-static {p1}, Lcom/android/camera/ui/FaceView;->access$000(Lcom/android/camera/ui/FaceView;)I

    move-result p1

    if-ne p1, v2, :cond_6

    iget-object p1, p0, Lcom/android/camera/ui/FaceView$1;->this$0:Lcom/android/camera/ui/FaceView;

    invoke-static {p1, v3}, Lcom/android/camera/ui/FaceView;->access$002(Lcom/android/camera/ui/FaceView;I)I

    iget-object p1, p0, Lcom/android/camera/ui/FaceView$1;->this$0:Lcom/android/camera/ui/FaceView;

    invoke-static {p1}, Lcom/android/camera/ui/FaceView;->access$100(Lcom/android/camera/ui/FaceView;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/camera/ui/FaceView$1;->this$0:Lcom/android/camera/ui/FaceView;

    invoke-static {p1}, Lcom/android/camera/ui/FaceView;->access$200(Lcom/android/camera/ui/FaceView;)V

    iget-object p1, p0, Lcom/android/camera/ui/FaceView$1;->this$0:Lcom/android/camera/ui/FaceView;

    invoke-static {p1}, Lcom/android/camera/ui/FaceView;->access$300(Lcom/android/camera/ui/FaceView;)Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;->setVisible(I)V

    iget-object p0, p0, Lcom/android/camera/ui/FaceView$1;->this$0:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/android/camera/ui/FaceView$1;->this$0:Lcom/android/camera/ui/FaceView;

    const/16 p1, 0x8

    const/16 v0, 0x258

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/FaceView;->setFaceRectVisible(II)V

    :cond_6
    :goto_0
    return-void
.end method
