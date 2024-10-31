.class public Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;
.super Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/EffectItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EffectRealtimeItemHolder"
.end annotation


# instance fields
.field private mEglCore:Lcom/xiaomi/renderengine/gl/EglCore;

.field private mEglSurface:Lcom/xiaomi/renderengine/gl/EglWindowSurface;

.field public mTextureView:Landroid/view/TextureView;

.field public final synthetic this$0:Lcom/android/camera/fragment/EffectItemAdapter;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/EffectItemAdapter;Landroid/view/View;Lcom/xiaomi/renderengine/gl/EglCore;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "itemView",
            "eglCore"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->this$0:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-direct {p0, p2}, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a01cf

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/TextureView;

    iput-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->mTextureView:Landroid/view/TextureView;

    const p1, 0x7f0a01d0

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->mEglCore:Lcom/xiaomi/renderengine/gl/EglCore;

    iget-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->mTextureView:Landroid/view/TextureView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bindEffectIndex(ILcom/android/camera/data/data/ComponentDataItem;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "componentDataItem"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;->bindEffectIndex(ILcom/android/camera/data/data/ComponentDataItem;)V

    iget-object v0, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->this$0:Lcom/android/camera/fragment/EffectItemAdapter;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget p2, p2, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    iget-object v2, v0, Lcom/android/camera/fragment/EffectItemAdapter;->mEffectItemListener:Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;->getCurrentIndex()I

    move-result v2

    if-ne v2, p1, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v0, v1, p2, v2}, Lcom/android/camera/fragment/EffectItemAdapter;->setAccessible(Landroid/view/View;IZ)V

    iget-object p2, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationPanel()Lcom/android/camera2/compat/theme/common/MiThemeOperationPanelInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationPanelInterface;->getEffectFilterItemSelectorLayout()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p2, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->this$0:Lcom/android/camera/fragment/EffectItemAdapter;

    iget-object p2, p2, Lcom/android/camera/fragment/EffectItemAdapter;->mEffectItemListener:Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;

    const-wide/16 v0, 0x1f4

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;->getCurrentIndex()I

    move-result p2

    if-ne p2, p1, :cond_2

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setActivated(Z)V

    iget-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->this$0:Lcom/android/camera/fragment/EffectItemAdapter;

    iget-object p1, p1, Lcom/android/camera/fragment/EffectItemAdapter;->mEffectItemListener:Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;->isAnimation()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    invoke-static {p1, v5}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    iget-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    new-instance p2, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p2}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    new-instance p2, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder$1;

    invoke-direct {p2, p0}, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder$1;-><init>(Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;)V

    invoke-virtual {p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1

    :cond_2
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v4}, Landroid/view/View;->setActivated(Z)V

    iget-object p2, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->this$0:Lcom/android/camera/fragment/EffectItemAdapter;

    iget-object p2, p2, Lcom/android/camera/fragment/EffectItemAdapter;->mEffectItemListener:Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;->isAnimation()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->this$0:Lcom/android/camera/fragment/EffectItemAdapter;

    iget-object p2, p2, Lcom/android/camera/fragment/EffectItemAdapter;->mEffectItemListener:Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;->getLastIndex()I

    move-result p2

    if-ne p2, p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    invoke-static {p1, v2}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    iget-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    new-instance p2, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p2}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    new-instance p2, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder$2;

    invoke-direct {p2, p0}, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder$2;-><init>(Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;)V

    invoke-virtual {p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_1
    return-void
.end method

.method public getEglSurface()Lcom/xiaomi/renderengine/gl/EglWindowSurface;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->mEglSurface:Lcom/xiaomi/renderengine/gl/EglWindowSurface;

    return-object p0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "surface",
            "width",
            "height"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->mEglCore:Lcom/xiaomi/renderengine/gl/EglCore;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/xiaomi/renderengine/gl/EglWindowSurface;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lcom/xiaomi/renderengine/gl/EglWindowSurface;-><init>(Lcom/xiaomi/renderengine/gl/EglCore;Landroid/graphics/SurfaceTexture;[I)V

    iput-object v1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->mEglSurface:Lcom/xiaomi/renderengine/gl/EglWindowSurface;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "EffectItemAdapter"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onSurfaceTextureAvailable width:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " height:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surface"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->mEglSurface:Lcom/xiaomi/renderengine/gl/EglWindowSurface;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/renderengine/gl/EglWindowSurface;->release()Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->mEglSurface:Lcom/xiaomi/renderengine/gl/EglWindowSurface;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "EffectItemAdapter"

    const-string/jumbo p1, "onSurfaceTextureDestroyed"

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "surface",
            "width",
            "height"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onSurfaceTextureSizeChanged width:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " height:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "EffectItemAdapter"

    invoke-static {p2, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surface"
        }
    .end annotation

    return-void
.end method
