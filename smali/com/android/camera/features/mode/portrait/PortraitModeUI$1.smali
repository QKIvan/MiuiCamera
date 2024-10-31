.class public Lcom/android/camera/features/mode/portrait/PortraitModeUI$1;
.super Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mode/portrait/PortraitModeUI;->getGestureListener()Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$OnGestureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mIsSupportGesture:Z

.field private mPassTouchFromButtonToSlide:Z

.field public final synthetic this$0:Lcom/android/camera/features/mode/portrait/PortraitModeUI;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mode/portrait/PortraitModeUI;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/features/mode/portrait/PortraitModeUI$1;->this$0:Lcom/android/camera/features/mode/portrait/PortraitModeUI;

    invoke-direct {p0}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$OnGestureListener;-><init>()V

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportBeautyLensDevice()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/features/mode/portrait/PortraitModeUI$1;->mIsSupportGesture:Z

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "e1",
            "e2",
            "velocityX",
            "velocityY"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/camera/features/mode/portrait/PortraitModeUI$1;->mIsSupportGesture:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/features/mode/portrait/PortraitModeUI$1;->mPassTouchFromButtonToSlide:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/features/mode/portrait/PortraitModeUI$1;->this$0:Lcom/android/camera/features/mode/portrait/PortraitModeUI;

    invoke-static {v0, p2}, Lcom/android/camera/features/mode/portrait/PortraitModeUI;->access$100(Lcom/android/camera/features/mode/portrait/PortraitModeUI;Landroid/view/MotionEvent;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/features/mode/portrait/PortraitModeUI$1;->mPassTouchFromButtonToSlide:Z

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "e1",
            "e2",
            "distanceX",
            "distanceY"
        }
    .end annotation

    iget-boolean p4, p0, Lcom/android/camera/features/mode/portrait/PortraitModeUI$1;->mIsSupportGesture:Z

    if-nez p4, :cond_0

    invoke-super {p0, p1, p2, p3, p3}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0

    :cond_0
    iget-boolean p4, p0, Lcom/android/camera/features/mode/portrait/PortraitModeUI$1;->mPassTouchFromButtonToSlide:Z

    if-nez p4, :cond_1

    iget-object p1, p0, Lcom/android/camera/features/mode/portrait/PortraitModeUI$1;->this$0:Lcom/android/camera/features/mode/portrait/PortraitModeUI;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/camera/features/mode/portrait/PortraitModeUI;->access$000(Lcom/android/camera/features/mode/portrait/PortraitModeUI;Landroid/view/View;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/features/mode/portrait/PortraitModeUI$1;->mPassTouchFromButtonToSlide:Z

    return p1

    :cond_1
    iget-object p4, p0, Lcom/android/camera/features/mode/portrait/PortraitModeUI$1;->this$0:Lcom/android/camera/features/mode/portrait/PortraitModeUI;

    invoke-static {p4, p2}, Lcom/android/camera/features/mode/portrait/PortraitModeUI;->access$100(Lcom/android/camera/features/mode/portrait/PortraitModeUI;Landroid/view/MotionEvent;)V

    invoke-super {p0, p1, p2, p3, p3}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public onUp(Landroid/view/MotionEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v1}, Lcom/android/camera/features/mode/portrait/PortraitModeUI$1;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    return-void
.end method
