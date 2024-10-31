.class public Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$6;
.super Lmiuix/animation/listener/TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->getZoomInTransitionListener()Lmiuix/animation/listener/TransitionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

.field public final synthetic val$actualRect:Landroid/graphics/RectF;

.field public final synthetic val$displayedRect:Landroid/graphics/RectF;

.field public final synthetic val$heightFolme:Ljava/lang/String;

.field public final synthetic val$isLandscape:Z

.field public final synthetic val$isOnBottom:Z

.field public final synthetic val$isOnRight:Z

.field public final synthetic val$widthFolme:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/RectF;ZLandroid/graphics/RectF;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$isLandscape",
            "val$actualRect",
            "val$isOnBottom",
            "val$displayedRect",
            "val$isOnRight",
            "val$widthFolme",
            "val$heightFolme"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$6;->this$0:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    iput-object p2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$6;->val$heightFolme:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$6;->val$widthFolme:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$6;->val$isOnRight:Z

    iput-object p5, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$6;->val$displayedRect:Landroid/graphics/RectF;

    iput-boolean p6, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$6;->val$isOnBottom:Z

    iput-object p7, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$6;->val$actualRect:Landroid/graphics/RectF;

    iput-boolean p8, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$6;->val$isLandscape:Z

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "toTag",
            "updateList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    if-eqz p2, :cond_5

    iget-object p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$6;->val$heightFolme:Ljava/lang/String;

    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$6;->val$widthFolme:Ljava/lang/String;

    invoke-static {p2, v0}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result p1

    invoke-virtual {p2}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result p2

    iget-boolean v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$6;->val$isOnRight:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$6;->val$displayedRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$6;->val$displayedRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    :goto_0
    iget-boolean p2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$6;->val$isOnBottom:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$6;->val$displayedRect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->top:F

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$6;->val$displayedRect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    :goto_1
    iget-object p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$6;->val$actualRect:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$6;->val$displayedRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-boolean p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$6;->val$isLandscape:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$6;->this$0:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    iget-object p2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$6;->val$actualRect:Landroid/graphics/RectF;

    invoke-static {p1, p2}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->access$100(Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;Landroid/graphics/RectF;)V

    :cond_4
    iget-object p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$6;->this$0:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    iget-object p2, p1, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mMarginLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$6;->val$actualRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$6;->val$actualRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->getLeftLR(II)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$6;->this$0:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    iget-object p1, p1, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mMarginLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object p2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$6;->val$actualRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object p0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$6;->this$0:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    iget-object p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mMarginLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    return-void
.end method
