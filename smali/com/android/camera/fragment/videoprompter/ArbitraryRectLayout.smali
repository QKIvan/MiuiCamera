.class public Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$AnchorPointState;,
        Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$GestureState;
    }
.end annotation


# static fields
.field private static final FLOME_HEIGHT_TAG:Ljava/lang/String; = "height"

.field private static final FLOME_WIDTH_TAG:Ljava/lang/String; = "width"

.field private static final MOVE_TOLERANCE:F = 5.0f

.field private static final TAG:Ljava/lang/String; = "ArbitraryRectLayout"

.field private static final ZOOM_TOLERANCE:F = 1.0f


# instance fields
.field private mAnchorPoint:Landroid/graphics/PointF;

.field private mAnchorPointState:I

.field private mAnimConfig:Lmiuix/animation/base/AnimConfig;

.field private mAnimListener:Lmiuix/animation/listener/TransitionListener;

.field private mCurrentOrientation:I

.field private mGestureState:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$GestureState;

.field private mIsAlter:Z

.field private mIsAnimating:Z

.field private mIsMovedOrZoomed:Z

.field private mIsRTL:Z

.field private mLimitRect:Landroid/graphics/Rect;

.field public mMarginLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

.field private mMarginTopWithoutTip:I

.field private mMinSize:Landroid/util/Size;

.field private mMoveAnimState:Lmiuix/animation/controller/AnimState;

.field private mStartHeight:I

.field private mStartMarginViewProperty:Lmiuix/animation/property/ViewProperty;

.field private mStartRawX:F

.field private mStartRawY:F

.field private mStartWidth:I

.field private mTopMarginViewProperty:Lmiuix/animation/property/ViewProperty;

.field private mZoomInTargetSize:I

.field private mZoomOutTargetHeight:I

.field private mZoomOutTargetWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p2, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$GestureState;->STATE_IDLE:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$GestureState;

    iput-object p2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mGestureState:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$GestureState;

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPointState:I

    iput p2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mCurrentOrientation:I

    new-instance p2, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$1;

    const-string/jumbo p3, "startMargin"

    invoke-direct {p2, p0, p3}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$1;-><init>(Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mStartMarginViewProperty:Lmiuix/animation/property/ViewProperty;

    new-instance p2, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$2;

    const-string/jumbo p3, "topMargin"

    invoke-direct {p2, p0, p3}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$2;-><init>(Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mTopMarginViewProperty:Lmiuix/animation/property/ViewProperty;

    new-instance p2, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$3;

    invoke-direct {p2, p0}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$3;-><init>(Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;)V

    iput-object p2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnimListener:Lmiuix/animation/listener/TransitionListener;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$002(Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mIsAnimating:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;Landroid/graphics/RectF;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->getRotatedLocationF(Landroid/graphics/RectF;)V

    return-void
.end method

.method private alterOutOfRange()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->isOutOfRange(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mIsAlter:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mIsAlter:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, LOooO0OO/OooO0O0/OooO0Oo/OooOo00;->OooOOO0(Landroid/content/Context;)LOooO0OO/OooO0O0/OooO0Oo/OooOo00;

    move-result-object p0

    invoke-virtual {p0}, LOooO0OO/OooO0O0/OooO0Oo/OooOo00;->OooO00o()V

    :cond_0
    return-void
.end method

.method private checkLayoutInitLayout(Landroid/graphics/Rect;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "initLocation",
            "context"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mMarginLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput-object v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mMarginLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->getInitialLocation(Landroid/graphics/Rect;Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mMarginLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object p2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mMarginLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object p2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mMarginLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->getLeftLR(II)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object p2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mMarginLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private ensureLayoutInLimitRect(FF)Landroid/graphics/RectF;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "moveX",
            "moveY"
        }
    .end annotation

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPoint:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    add-float v3, v2, p1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, p2

    add-float/2addr v2, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v2, p1

    iget-object p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPoint:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    invoke-direct {v0, v3, v1, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {p0}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->isLandscape()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->getRotatedLocationF(Landroid/graphics/RectF;)V

    :cond_0
    iget p1, v0, Landroid/graphics/RectF;->left:F

    iget-object p2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mLimitRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, p2

    cmpg-float p1, p1, v1

    if-gez p1, :cond_1

    int-to-float p1, p2

    iget p2, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->offsetTo(FF)V

    :cond_1
    iget p1, v0, Landroid/graphics/RectF;->top:F

    iget-object p2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mLimitRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, p2

    cmpg-float p1, p1, v1

    if-gez p1, :cond_2

    iget p1, v0, Landroid/graphics/RectF;->left:F

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->offsetTo(FF)V

    :cond_2
    iget p1, v0, Landroid/graphics/RectF;->right:F

    iget-object p2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mLimitRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, p2

    cmpl-float v1, p1, v1

    const/4 v2, 0x0

    if-lez v1, :cond_3

    int-to-float p2, p2

    sub-float/2addr p2, p1

    invoke-virtual {v0, p2, v2}, Landroid/graphics/RectF;->offset(FF)V

    :cond_3
    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object p2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mLimitRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, p2

    cmpl-float v1, p1, v1

    if-lez v1, :cond_4

    int-to-float p2, p2

    sub-float/2addr p2, p1

    invoke-virtual {v0, v2, p2}, Landroid/graphics/RectF;->offset(FF)V

    :cond_4
    invoke-direct {p0}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->isLandscape()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->getRotatedLocationF(Landroid/graphics/RectF;)V

    :cond_5
    return-object v0
.end method

.method private getGlobalVisibleRect()Landroid/graphics/Rect;
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-direct {p0}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->getRotatedLocation(Landroid/graphics/Rect;)V

    :cond_0
    return-object v0
.end method

.method private getInitialLocation(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0709a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0709a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget v3, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mCurrentOrientation:I

    if-eqz v3, :cond_2

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_1

    const/16 v4, 0xb4

    if-eq v3, v4, :cond_2

    const/16 p1, 0x10e

    if-eq v3, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/display/Display;->getTopBarHeight()I

    move-result p1

    invoke-static {}, Lcom/android/camera/display/Display;->getTopMargin()I

    move-result v3

    add-int/2addr p1, v3

    add-int/2addr p1, v0

    iput p1, v2, Landroid/graphics/Rect;->top:I

    iput v0, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    iput v1, v2, Landroid/graphics/Rect;->right:I

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v1

    add-int/2addr p1, v1

    sub-int/2addr p1, v0

    iput p1, v2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v2}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->getRotatedLocation(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/camera/display/Display;->getTopBarHeight()I

    move-result p1

    invoke-static {}, Lcom/android/camera/display/Display;->getTopMargin()I

    move-result v3

    add-int/2addr p1, v3

    add-int/2addr p1, v0

    iput p1, v2, Landroid/graphics/Rect;->top:I

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result p1

    sub-int/2addr p1, v0

    sub-int/2addr p1, v1

    iput p1, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v1

    iput p1, v2, Landroid/graphics/Rect;->right:I

    iget p1, v2, Landroid/graphics/Rect;->top:I

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v1

    add-int/2addr p1, v1

    sub-int/2addr p1, v0

    iput p1, v2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v2}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->getRotatedLocation(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/camera/display/Display;->getTopBarHeight()I

    move-result p0

    invoke-static {}, Lcom/android/camera/display/Display;->getTopMargin()I

    move-result v1

    add-int/2addr p0, v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0709aa

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr p0, v1

    iput p0, v2, Landroid/graphics/Rect;->top:I

    iput v0, v2, Landroid/graphics/Rect;->left:I

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result p0

    sub-int/2addr p0, v0

    iput p0, v2, Landroid/graphics/Rect;->right:I

    iget p0, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0709a4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr p0, p1

    iput p0, v2, Landroid/graphics/Rect;->bottom:I

    :goto_0
    return-object v2
.end method

.method private getInitialLocation(Landroid/graphics/Rect;Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "initLocation",
            "context"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mMinSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mMinSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getInitialLocation: int = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", currentOrientation: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mCurrentOrientation:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ArbitraryRectLayout"

    invoke-static {v3, p2, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->isLandscape()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->getRotatedLocation(Landroid/graphics/Rect;)V

    :cond_1
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->updateLayoutLocation(Landroid/graphics/Rect;Lmiuix/animation/controller/AnimState;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInitialLocation: final ="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mCurrentOrientation:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    :cond_2
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->getInitialLocation(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private getRotatedLocation(Landroid/graphics/Rect;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentLocation"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int v2, p0, v0

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int v3, v0, p0

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, p0

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private getRotatedLocationF(Landroid/graphics/RectF;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentLocation"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p1, Landroid/graphics/RectF;->left:F

    sub-float v2, p0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    sub-float v4, v0, p0

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    iput v2, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, p0

    iput v2, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private getZoomInTransitionListener()Lmiuix/animation/listener/TransitionListener;
    .locals 13

    iget v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPointState:I

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v8, v3

    goto :goto_0

    :cond_0
    move v8, v2

    :goto_0
    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    move v10, v3

    goto :goto_1

    :cond_1
    move v10, v2

    :goto_1
    invoke-direct {p0}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->isLandscape()Z

    move-result v12

    const-string v0, "height"

    const-string/jumbo v1, "width"

    if-eqz v12, :cond_2

    move-object v7, v0

    move-object v6, v1

    goto :goto_2

    :cond_2
    move-object v6, v0

    move-object v7, v1

    :goto_2
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->getGlobalVisibleRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    new-instance v0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$6;

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v12}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$6;-><init>(Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/RectF;ZLandroid/graphics/RectF;Z)V

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPoint:Landroid/graphics/PointF;

    new-instance v0, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0709b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0709af

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mMinSize:Landroid/util/Size;

    invoke-static {}, Lcom/android/camera/display/Display;->getTopMargin()I

    move-result v0

    invoke-static {}, Lcom/android/camera/display/Display;->getTopBarHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0709ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mMarginTopWithoutTip:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07099f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0709a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mZoomInTargetSize:I

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/4 v2, -0x2

    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnimConfig:Lmiuix/animation/base/AnimConfig;

    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string/jumbo v1, "moveUpDown"

    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mMoveAnimState:Lmiuix/animation/controller/AnimState;

    invoke-static {p1}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mIsRTL:Z

    return-void

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
    .end array-data
.end method

.method private isInZoomingTolerance(FF)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "currentRawX",
            "currentRawY"
        }
    .end annotation

    iget v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mStartRawX:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-ltz p1, :cond_1

    iget p0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mStartRawY:F

    sub-float/2addr p2, p0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isLandscape()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mCurrentOrientation:I

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isOutOfRange(II)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "w",
            "h"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->isLandscape()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mLimitRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mLimitRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eq p1, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mMinSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    if-ne p2, v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mMinSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1

    :cond_3
    iget-object v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mLimitRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-ne p2, v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mLimitRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eq p1, v0, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mMinSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    if-ne p2, v0, :cond_5

    iget-object p0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mMinSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    if-ne p1, p0, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    :cond_6
    :goto_1
    return v1
.end method

.method private setAnchorPointWhenZooming()V
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAnchorPointWhenZooming: displayedRect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "ArbitraryRectLayout"

    invoke-static {v4, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput v2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPointState:I

    iget v1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mStartRawX:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPoint:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPointState:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPointState:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPoint:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPointState:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPointState:I

    :goto_0
    iget v1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mStartRawY:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iput v0, v1, Landroid/graphics/PointF;->y:F

    iget v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPointState:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPointState:I

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, v1, Landroid/graphics/PointF;->y:F

    iget v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPointState:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPointState:I

    :goto_1
    return-void
.end method

.method private setFixedPoint()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mMarginLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->getLeftLR()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mMarginLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mMarginLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setZoomOutAnimState(Lmiuix/animation/controller/AnimState;II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "zoomOutAnim",
            "zoomOutTargetWidth",
            "zoomOutTargetHeight"
        }
    .end annotation

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget v1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPointState:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sub-int/2addr v1, p2

    iget-object v2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mLimitRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v1, p2

    iget-object v2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mLimitRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    :goto_0
    iget p2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPointState:I

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPoint:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    sub-int/2addr p2, p3

    iget-object v1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mLimitRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, p3

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPoint:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    add-int/2addr p2, p3

    iget-object v1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mLimitRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, p3

    iput p2, v0, Landroid/graphics/Rect;->top:I

    :goto_1
    invoke-direct {p0}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->isLandscape()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->getRotatedLocation(Landroid/graphics/Rect;)V

    :cond_2
    iget-object p2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mStartMarginViewProperty:Lmiuix/animation/property/ViewProperty;

    iget p3, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, p3, v1}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->getLeftLR(II)I

    move-result p3

    int-to-double v1, p3

    invoke-virtual {p1, p2, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    iget-object p0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mTopMarginViewProperty:Lmiuix/animation/property/ViewProperty;

    iget p2, v0, Landroid/graphics/Rect;->top:I

    int-to-double p2, p2

    invoke-virtual {p1, p0, p2, p3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    return-void
.end method

.method private updateLayoutLocation(Landroid/graphics/Rect;Lmiuix/animation/controller/AnimState;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "currentLocation",
            "animState"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mLimitRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->isLandscape()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->getRotatedLocation(Landroid/graphics/Rect;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mLimitRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mLimitRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    if-lez v0, :cond_4

    if-eqz p2, :cond_3

    invoke-direct {p0}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->isLandscape()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    goto :goto_0

    :cond_2
    sget-object v2, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    :goto_0
    iget-object v3, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mLimitRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {p2, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    :cond_3
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_4
    if-lez v1, :cond_7

    if-eqz p2, :cond_6

    invoke-direct {p0}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    goto :goto_1

    :cond_5
    sget-object v0, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    :goto_1
    iget-object v2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mLimitRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {p2, v0, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    :cond_6
    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    :cond_7
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mLimitRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x0

    if-ge v0, v2, :cond_8

    sub-int/2addr v2, v0

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_2

    :cond_8
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_9

    sub-int/2addr v1, v0

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    :cond_9
    :goto_2
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mLimitRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    if-ge v0, v2, :cond_a

    sub-int/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_3

    :cond_a
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_b

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    :cond_b
    :goto_3
    invoke-direct {p0}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->getRotatedLocation(Landroid/graphics/Rect;)V

    :cond_c
    if-eqz p2, :cond_d

    iget-object v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mTopMarginViewProperty:Lmiuix/animation/property/ViewProperty;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-double v1, v1

    invoke-virtual {p2, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    iget-object v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mStartMarginViewProperty:Lmiuix/animation/property/ViewProperty;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v1, p1}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->getLeftLR(II)I

    move-result p0

    int-to-double p0, p0

    invoke-virtual {p2, v0, p0, p1}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    :cond_d
    return-void
.end method

.method private updateLocationAfterMoving(FF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "moveX",
            "moveY"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$GestureState;->STATE_DRAGGING:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$GestureState;

    iput-object v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mGestureState:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$GestureState;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mIsMovedOrZoomed:Z

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->ensureLayoutInLimitRect(FF)Landroid/graphics/RectF;

    move-result-object p1

    iget p2, p1, Landroid/graphics/RectF;->left:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p1, Landroid/graphics/RectF;->right:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, p2, v0, v1, p1}, Landroid/view/ViewGroup;->layout(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateLocationAfterZooming(FF)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "currentRawX",
            "currentRawY"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mStartRawX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mStartWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mStartRawX:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float/2addr v0, p1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mStartWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mStartRawX:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    add-float/2addr v0, p1

    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPoint:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mStartRawY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_1

    iget p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mStartHeight:I

    int-to-float p1, p1

    iget v1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mStartRawY:F

    sub-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    sub-float/2addr p1, p2

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mStartHeight:I

    int-to-float p1, p1

    iget v1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mStartRawY:F

    sub-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    add-float/2addr p1, p2

    :goto_1
    invoke-direct {p0}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->isLandscape()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mMinSize:Landroid/util/Size;

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iget-object v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mMinSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mMinSize:Landroid/util/Size;

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iget-object v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mMinSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    :goto_2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget v1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPointState:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, v0, Landroid/graphics/Rect;->left:I

    iget-object p2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPoint:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, v0, Landroid/graphics/Rect;->right:I

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, v0, Landroid/graphics/Rect;->right:I

    :goto_3
    iget p2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPointState:I

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPoint:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->top:I

    iget-object p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPoint:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    :cond_4
    iget-object p2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPoint:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, v0, Landroid/graphics/Rect;->top:I

    iget-object p2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPoint:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    :goto_4
    iget-object p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mLimitRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    invoke-direct {p0}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->isLandscape()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->getRotatedLocation(Landroid/graphics/Rect;)V

    :cond_5
    iget-object p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mMarginLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mMarginLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mMarginLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget p2, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, p2, v1}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->getLeftLR(II)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mMarginLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget p2, v0, Landroid/graphics/Rect;->top:I

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateZoomOutTarget(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mLimitRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mZoomOutTargetWidth:I

    iget-object p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mLimitRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mZoomOutTargetHeight:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mLimitRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mZoomOutTargetWidth:I

    iget-object p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mLimitRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mZoomOutTargetHeight:I

    :goto_0
    return-void
.end method


# virtual methods
.method public getLeftLR()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mIsRTL:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result p0

    sub-int/2addr v0, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getLeftLR(II)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "right"
        }
    .end annotation

    iget-boolean p0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mIsRTL:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result p0

    sub-int p1, p0, p2

    :cond_0
    return p1
.end method

.method public isAnimating()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mIsAnimating:Z

    return p0
.end method

.method public moveDown()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mMoveAnimState:Lmiuix/animation/controller/AnimState;

    invoke-virtual {v0}, Lmiuix/animation/controller/AnimState;->clear()V

    iget-object v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnimConfig:Lmiuix/animation/base/AnimConfig;

    iget-object v0, v0, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    invoke-direct {p0}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->getGlobalVisibleRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mMoveAnimState:Lmiuix/animation/controller/AnimState;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->updateLayoutLocation(Landroid/graphics/Rect;Lmiuix/animation/controller/AnimState;)V

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mMoveAnimState:Lmiuix/animation/controller/AnimState;

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    iget-object p0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnimConfig:Lmiuix/animation/base/AnimConfig;

    aput-object p0, v0, v2

    invoke-interface {v1, v3, v0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method public moveLayout(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mStartRawX:F

    sub-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mStartRawY:F

    sub-float/2addr p1, v2

    invoke-direct {p0, v0, p1}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->updateLocationAfterMoving(FF)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mStartRawX:F

    sub-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mStartRawY:F

    sub-float/2addr p1, v2

    invoke-direct {p0, v0, p1}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->updateLocationAfterMoving(FF)V

    iget-object p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mGestureState:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$GestureState;

    sget-object v0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$GestureState;->STATE_DRAGGING:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$GestureState;

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    return v2

    :cond_2
    sget-object p1, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$GestureState;->STATE_IDLE:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$GestureState;

    iput-object p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mGestureState:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$GestureState;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "moveLayout: getLeft = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", getTop = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", getRight = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", getBottom = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "ArbitraryRectLayout"

    invoke-static {v2, p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mMarginLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mMarginLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->getLeftLR()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mMarginLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mStartRawX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mStartRawY:F

    iget-object p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPoint:Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/PointF;->set(FF)V

    sget-object p1, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$GestureState;->STATE_IDLE:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$GestureState;

    iput-object p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mGestureState:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$GestureState;

    :goto_0
    return v1
.end method

.method public moveUp()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mIsMovedOrZoomed:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mLimitRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mCurrentOrientation:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mMoveAnimState:Lmiuix/animation/controller/AnimState;

    invoke-virtual {v0}, Lmiuix/animation/controller/AnimState;->clear()V

    iget-object v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mMoveAnimState:Lmiuix/animation/controller/AnimState;

    iget-object v1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mTopMarginViewProperty:Lmiuix/animation/property/ViewProperty;

    iget v2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mMarginTopWithoutTip:I

    int-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    iget-object v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnimConfig:Lmiuix/animation/base/AnimConfig;

    iget-object v0, v0, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mMoveAnimState:Lmiuix/animation/controller/AnimState;

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    iget-object p0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnimConfig:Lmiuix/animation/base/AnimConfig;

    aput-object p0, v0, v2

    invoke-interface {v1, v3, v0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :cond_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "changed",
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V

    iget-object p2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mMarginLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput-object p2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mMarginLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mIsAlter:Z

    :cond_1
    return-void
.end method

.method public rotateLayout(II)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lastDegree",
            "newDegree"
        }
    .end annotation

    iput p2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mCurrentOrientation:I

    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string v1, "from"

    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lmiuix/animation/controller/AnimState;

    const-string/jumbo v2, "to"

    invoke-direct {v1, v2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    const/16 v2, 0x10e

    if-nez p1, :cond_0

    if-ne p2, v2, :cond_0

    const/16 p2, -0x5a

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    if-nez p2, :cond_1

    const/16 p2, 0x168

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->setFixedPoint()V

    sget-object v2, Lmiuix/animation/property/ViewProperty;->ROTATION:Lmiuix/animation/property/ViewProperty;

    int-to-double v3, p1

    invoke-virtual {v0, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    int-to-double p1, p2

    invoke-virtual {v1, v2, p1, p2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    invoke-direct {p0}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->getGlobalVisibleRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->updateLayoutLocation(Landroid/graphics/Rect;Lmiuix/animation/controller/AnimState;)V

    iget-object p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnimConfig:Lmiuix/animation/base/AnimConfig;

    iget-object p1, p1, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    const/4 p1, 0x1

    new-array p2, p1, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p0, p2, v2

    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p2

    invoke-interface {p2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p2

    new-array v3, p1, [Lmiuix/animation/base/AnimConfig;

    iget-object v4, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnimConfig:Lmiuix/animation/base/AnimConfig;

    new-array p1, p1, [Lmiuix/animation/listener/TransitionListener;

    iget-object p0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnimListener:Lmiuix/animation/listener/TransitionListener;

    aput-object p0, p1, v2

    invoke-virtual {v4, p1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-interface {p2, v0, v1, v3}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method public setAnchorPointByZoomButton(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomButton"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->getGlobalVisibleRect()Landroid/graphics/Rect;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPointState:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    if-le p1, v2, :cond_0

    iget p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPointState:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPointState:I

    iget-object p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPoint:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iput v2, p1, Landroid/graphics/PointF;->x:F

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPointState:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPointState:I

    iget-object p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPoint:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iput v2, p1, Landroid/graphics/PointF;->x:F

    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    if-le p1, v1, :cond_1

    iget p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPointState:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPointState:I

    iget-object p0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPoint:Landroid/graphics/PointF;

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    iput p1, p0, Landroid/graphics/PointF;->y:F

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPointState:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPointState:I

    iget-object p0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPoint:Landroid/graphics/PointF;

    iget p1, v0, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    iput p1, p0, Landroid/graphics/PointF;->y:F

    :goto_1
    return-void
.end method

.method public setAnchorPointWhenZoomOut()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mIsRTL:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    :goto_0
    iget v1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mCurrentOrientation:I

    div-int/lit8 v1, v1, 0x5a

    rsub-int/lit8 v2, v1, 0x4

    shl-int v2, v0, v2

    and-int/lit8 v2, v2, 0xf

    shr-int/2addr v0, v1

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPointState:I

    invoke-direct {p0}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->getGlobalVisibleRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPoint:Landroid/graphics/PointF;

    iget p0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnchorPointState:I

    and-int/lit8 v2, p0, 0x8

    if-eqz v2, :cond_1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_1
    iget v2, v0, Landroid/graphics/Rect;->right:I

    :goto_1
    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/PointF;->x:F

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_2

    iget p0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :cond_2
    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    :goto_2
    int-to-float p0, p0

    iput p0, v1, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public setAnimating()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mIsAnimating:Z

    return-void
.end method

.method public setCurrentOrientation(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    iput p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mCurrentOrientation:I

    return-void
.end method

.method public showOrHideLayout(ZILandroid/graphics/Rect;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "visible",
            "newDegree",
            "initLocation"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->setCurrentOrientation(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mIsMovedOrZoomed:Z

    const/4 v0, 0x0

    const-wide/16 v1, 0xc8

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    int-to-float p1, p2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setRotation(F)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->checkLayoutInitLayout(Landroid/graphics/Rect;Landroid/content/Context;)V

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    new-instance p2, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p2}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    new-instance p2, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$4;

    invoke-direct {p2, p0}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$4;-><init>(Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;)V

    invoke-virtual {p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_0

    :cond_0
    invoke-static {p0, v3}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    new-instance p2, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p2}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    new-instance p2, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$5;

    invoke-direct {p2, p0}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$5;-><init>(Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;)V

    invoke-virtual {p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    :goto_0
    return-void
.end method

.method public updateLimitRect(Landroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "limitRect"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mLimitRect:Landroid/graphics/Rect;

    return-void
.end method

.method public zoomInLayout()V
    .locals 9

    iget-object v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnimConfig:Lmiuix/animation/base/AnimConfig;

    iget-object v0, v0, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "ArbitraryRectLayout"

    const-string/jumbo v3, "zoomInLayout: "

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mZoomOutTargetWidth:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mZoomOutTargetHeight:I

    new-instance v1, Lmiuix/animation/controller/AnimState;

    const-string/jumbo v2, "zoomInFrom"

    invoke-direct {v1, v2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v2, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    iget v3, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mZoomOutTargetWidth:I

    int-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    sget-object v3, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    iget v4, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mZoomOutTargetHeight:I

    int-to-double v4, v4

    invoke-virtual {v1, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    new-instance v4, Lmiuix/animation/controller/AnimState;

    const-string/jumbo v5, "zoomInTo"

    invoke-direct {v4, v5}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    iget v5, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mZoomInTargetSize:I

    int-to-double v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    iget v4, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mZoomInTargetSize:I

    int-to-double v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->getZoomInTransitionListener()Lmiuix/animation/listener/TransitionListener;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Landroid/view/View;

    aput-object p0, v5, v0

    invoke-static {v5}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v5

    invoke-interface {v5}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v5

    new-array v6, v4, [Lmiuix/animation/base/AnimConfig;

    iget-object v7, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnimConfig:Lmiuix/animation/base/AnimConfig;

    const/4 v8, 0x2

    new-array v8, v8, [Lmiuix/animation/listener/TransitionListener;

    aput-object v3, v8, v0

    iget-object p0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnimListener:Lmiuix/animation/listener/TransitionListener;

    aput-object p0, v8, v4

    invoke-virtual {v7, v8}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v6, v0

    invoke-interface {v5, v1, v2, v6}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method public zoomLayout(Landroid/view/MotionEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_5

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    const/4 v3, 0x7

    if-eq p1, v3, :cond_0

    goto :goto_1

    :cond_0
    sget-object p1, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$GestureState;->STATE_ZOOMING:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$GestureState;

    iput-object p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mGestureState:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$GestureState;

    iput-boolean v2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mIsMovedOrZoomed:Z

    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->isInZoomingTolerance(FF)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->updateLocationAfterZooming(FF)V

    invoke-direct {p0}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->alterOutOfRange()V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mGestureState:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$GestureState;

    sget-object v2, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$GestureState;->STATE_ZOOMING:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$GestureState;

    if-ne p1, v2, :cond_4

    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->isInZoomingTolerance(FF)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->updateLocationAfterZooming(FF)V

    :cond_4
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mIsAlter:Z

    sget-object p1, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$GestureState;->STATE_IDLE:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$GestureState;

    iput-object p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mGestureState:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$GestureState;

    goto :goto_1

    :cond_5
    iput v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mStartRawX:F

    iput v1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mStartRawY:F

    invoke-direct {p0}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->isLandscape()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mStartWidth:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mStartHeight:I

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mStartWidth:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mStartHeight:I

    :goto_0
    invoke-direct {p0}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->setAnchorPointWhenZooming()V

    invoke-direct {p0}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->setFixedPoint()V

    sget-object p1, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$GestureState;->STATE_IDLE:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$GestureState;

    iput-object p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mGestureState:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$GestureState;

    :goto_1
    return-void
.end method

.method public zoomOutLayout(Lmiuix/animation/listener/TransitionListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string/jumbo v1, "zoomOut"

    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mZoomOutTargetWidth:I

    iget v2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mZoomOutTargetHeight:I

    invoke-direct {p0, v1, v2}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->updateZoomOutTarget(II)V

    sget-object v1, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    iget v2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mZoomOutTargetWidth:I

    int-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    sget-object v2, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    iget v3, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mZoomOutTargetHeight:I

    int-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "zoomOutLayout: mZoomOutTargetWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mZoomOutTargetWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mZoomOutTargetHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mZoomOutTargetHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "ArbitraryRectLayout"

    invoke-static {v4, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mZoomOutTargetHeight:I

    iget v3, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mZoomOutTargetWidth:I

    invoke-direct {p0, v0, v1, v3}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->setZoomOutAnimState(Lmiuix/animation/controller/AnimState;II)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mZoomOutTargetWidth:I

    iget v3, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mZoomOutTargetHeight:I

    invoke-direct {p0, v0, v1, v3}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->setZoomOutAnimState(Lmiuix/animation/controller/AnimState;II)V

    :goto_0
    iget-object v1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnimConfig:Lmiuix/animation/base/AnimConfig;

    iget-object v1, v1, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnimConfig:Lmiuix/animation/base/AnimConfig;

    const/4 v4, 0x2

    new-array v4, v4, [Lmiuix/animation/listener/TransitionListener;

    iget-object v5, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnimListener:Lmiuix/animation/listener/TransitionListener;

    aput-object v5, v4, v2

    aput-object p1, v4, v1

    invoke-virtual {v3, v4}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnimConfig:Lmiuix/animation/base/AnimConfig;

    new-array v3, v1, [Lmiuix/animation/listener/TransitionListener;

    iget-object v4, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnimListener:Lmiuix/animation/listener/TransitionListener;

    aput-object v4, v3, v2

    invoke-virtual {p1, v3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    :goto_1
    new-array p1, v1, [Landroid/view/View;

    aput-object p0, p1, v2

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    iget-object p0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->mAnimConfig:Lmiuix/animation/base/AnimConfig;

    aput-object p0, v1, v2

    invoke-interface {p1, v0, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method
