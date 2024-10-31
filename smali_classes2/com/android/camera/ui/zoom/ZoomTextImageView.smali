.class public Lcom/android/camera/ui/zoom/ZoomTextImageView;
.super Landroid/view/View;


# static fields
.field public static final TYPE_TEXT_INDEX_NORMAL:I = 0x1

.field public static final TYPE_TEXT_INDEX_RING:I = 0x4

.field public static final TYPE_TEXT_NORMAL:I = 0x0

.field public static final TYPE_TEXT_RING:I = 0x3

.field public static final TYPE_TEXT_SINGLE_NORMAL:I = 0x2

.field public static final TYPE_TEXT_SINGLE_RING:I = 0x5


# instance fields
.field private mBackColorAnim:Landroid/animation/ValueAnimator;

.field private mCirclePaint:Landroid/graphics/Paint;

.field private mCurrentBackgroundColor:I

.field private mCurrentText:Ljava/lang/String;

.field private mCurrentType:I

.field private mIsOnlyZoomCount:Z

.field private mIsSelect:Z

.field private mLayoutHeight:I

.field private mLayoutPaddingBottom:I

.field private mLayoutPaddingLeft:I

.field private mLayoutPaddingRight:I

.field private mLayoutPaddingTop:I

.field private mLayoutWidth:I

.field private mNormalBackgroundColor:I

.field private mNumHeight:F

.field private mNumWidth:F

.field private mRadius:F

.field private mRotation:F

.field private mSelectBackgroundColor:I

.field private mShadowColor:I

.field private mShadowRadius:F

.field private mTextColor:I

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSelectColor:I

.field private mXHeight:F

.field private mXWidth:F


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

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXWidth:F

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXHeight:F

    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

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

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXWidth:F

    iput p2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXHeight:F

    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXWidth:F

    iput p2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXHeight:F

    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr",
            "defStyleRes"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXWidth:F

    iput p2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXHeight:F

    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->init(Landroid/content/Context;)V

    return-void
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

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070ac9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    const-string v0, "sans-serif-medium"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-static {v3, v0}, LOooO0OO/OooO0O0/OooO0OO/OooOO0;->OooO0OO(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationZoom()Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;->getShadowStyleRes()I

    move-result v3

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mShadowRadius:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mShadowRadius:F

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    const/high16 v1, -0x80000000

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mShadowColor:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06044c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNormalBackgroundColor:I

    return-void

    :array_0
    .array-data 4
        0x1010161
        0x1010164
    .end array-data
.end method


# virtual methods
.method public isOnlyZoomCount(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOnlyZoomCount"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mIsOnlyZoomCount:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutWidth:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutWidth:I

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutHeight:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutHeight:I

    :cond_1
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingLeft:I

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingLeft:I

    :cond_2
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingRight:I

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingRight:I

    :cond_3
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingTop:I

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingTop:I

    :cond_4
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingBottom:I

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingBottom:I

    :cond_5
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutHeight:I

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingBottom:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mRadius:F

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentType:I

    const-string v2, "X"

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v0, :cond_f

    const/4 v5, 0x1

    if-eq v0, v5, :cond_d

    const/4 v5, 0x2

    if-eq v0, v5, :cond_c

    const/4 v5, 0x3

    if-eq v0, v5, :cond_a

    const/4 v5, 0x4

    if-eq v0, v5, :cond_7

    const/4 v5, 0x5

    if-eq v0, v5, :cond_6

    goto/16 :goto_6

    :cond_6
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentText:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNormalBackgroundColor:I

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f07049e

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mRadius:F

    int-to-float v0, v0

    add-float v6, v5, v0

    iget v7, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingTop:I

    int-to-float v7, v7

    add-float/2addr v7, v5

    iget-object v8, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v8

    div-float/2addr v8, v1

    sub-float/2addr v5, v8

    iget-object v8, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v5, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mRotation:F

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mRadius:F

    add-float v7, v6, v0

    iget v8, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingTop:I

    int-to-float v8, v8

    add-float/2addr v6, v8

    invoke-virtual {p1, v5, v7, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mRadius:F

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingTop:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentText:Ljava/lang/String;

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mRadius:F

    add-float/2addr v5, v0

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNumWidth:F

    iget v7, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXWidth:F

    add-float/2addr v6, v7

    div-float/2addr v6, v1

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNumHeight:F

    neg-float v6, v6

    div-float/2addr v6, v1

    add-float/2addr v6, v4

    iget-object v7, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v3, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutWidth:I

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingLeft:I

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingRight:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNumWidth:F

    add-float/2addr v3, v5

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXWidth:F

    sub-float/2addr v3, v5

    div-float/2addr v3, v1

    add-float/2addr v0, v3

    iget v3, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXHeight:F

    neg-float v3, v3

    div-float/2addr v3, v1

    add-float/2addr v3, v4

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_6

    :cond_7
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentText:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mIsSelect:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentBackgroundColor:I

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mRadius:F

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingLeft:I

    int-to-float v5, v5

    add-float/2addr v5, v0

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingTop:I

    int-to-float v6, v6

    add-float/2addr v6, v0

    iget-boolean v7, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mIsSelect:Z

    if-eqz v7, :cond_9

    move v7, v3

    goto :goto_1

    :cond_9
    iget-object v7, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v7

    div-float/2addr v7, v1

    :goto_1
    sub-float/2addr v0, v7

    iget-object v7, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v0, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mRotation:F

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mRadius:F

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingLeft:I

    int-to-float v6, v6

    add-float/2addr v6, v5

    iget v7, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingTop:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    invoke-virtual {p1, v0, v6, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mRadius:F

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingTop:I

    int-to-float v5, v5

    add-float/2addr v0, v5

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentText:Ljava/lang/String;

    iget v3, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingLeft:I

    int-to-float v3, v3

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mRadius:F

    add-float/2addr v3, v5

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNumWidth:F

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXWidth:F

    add-float/2addr v5, v6

    div-float/2addr v5, v1

    sub-float/2addr v3, v5

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNumHeight:F

    neg-float v5, v5

    div-float/2addr v5, v1

    add-float/2addr v5, v4

    iget-object v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingLeft:I

    int-to-float v3, v0

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutWidth:I

    sub-int/2addr v5, v0

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingRight:I

    sub-int/2addr v5, v0

    int-to-float v0, v5

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNumWidth:F

    add-float/2addr v0, v5

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXWidth:F

    sub-float/2addr v0, v5

    div-float/2addr v0, v1

    add-float/2addr v3, v0

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXHeight:F

    neg-float v0, v0

    div-float/2addr v0, v1

    add-float/2addr v0, v4

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v0, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_6

    :cond_a
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentText:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentBackgroundColor:I

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mRotation:F

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mRadius:F

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingLeft:I

    int-to-float v6, v6

    add-float/2addr v6, v5

    iget v7, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingTop:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    invoke-virtual {p1, v0, v6, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mRadius:F

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingTop:I

    int-to-float v5, v5

    add-float/2addr v0, v5

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mIsSelect:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentText:Ljava/lang/String;

    iget v3, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingLeft:I

    int-to-float v3, v3

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mRadius:F

    add-float/2addr v3, v5

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNumWidth:F

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXWidth:F

    add-float/2addr v5, v6

    div-float/2addr v5, v1

    sub-float/2addr v3, v5

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNumHeight:F

    neg-float v5, v5

    div-float/2addr v5, v1

    add-float/2addr v5, v4

    iget-object v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingLeft:I

    int-to-float v3, v0

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutWidth:I

    sub-int/2addr v5, v0

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingRight:I

    sub-int/2addr v5, v0

    int-to-float v0, v5

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNumWidth:F

    add-float/2addr v0, v5

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXWidth:F

    sub-float/2addr v0, v5

    div-float/2addr v0, v1

    add-float/2addr v3, v0

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXHeight:F

    neg-float v0, v0

    div-float/2addr v0, v1

    add-float/2addr v0, v4

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v0, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_b
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentText:Ljava/lang/String;

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingLeft:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mRadius:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNumWidth:F

    div-float/2addr v3, v1

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNumHeight:F

    neg-float v3, v3

    div-float/2addr v3, v1

    add-float/2addr v3, v4

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_6

    :cond_c
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentText:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNormalBackgroundColor:I

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mRadius:F

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingLeft:I

    int-to-float v5, v5

    add-float/2addr v5, v0

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingTop:I

    int-to-float v6, v6

    add-float/2addr v6, v0

    iget-object v7, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v0, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mRotation:F

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mRadius:F

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingLeft:I

    int-to-float v6, v6

    add-float/2addr v6, v5

    iget v7, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingTop:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    invoke-virtual {p1, v0, v6, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mRadius:F

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingTop:I

    int-to-float v5, v5

    add-float/2addr v0, v5

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentText:Ljava/lang/String;

    iget v3, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingLeft:I

    int-to-float v3, v3

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mRadius:F

    add-float/2addr v3, v5

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNumWidth:F

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXWidth:F

    add-float/2addr v5, v6

    div-float/2addr v5, v1

    sub-float/2addr v3, v5

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNumHeight:F

    neg-float v5, v5

    div-float/2addr v5, v1

    add-float/2addr v5, v4

    iget-object v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingLeft:I

    int-to-float v3, v0

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutWidth:I

    sub-int/2addr v5, v0

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingRight:I

    sub-int/2addr v5, v0

    int-to-float v0, v5

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNumWidth:F

    add-float/2addr v0, v5

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXWidth:F

    sub-float/2addr v0, v5

    div-float/2addr v0, v1

    add-float/2addr v3, v0

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXHeight:F

    neg-float v0, v0

    div-float/2addr v0, v1

    add-float/2addr v0, v4

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v0, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_6

    :cond_d
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentText:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mIsSelect:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextSelectColor:I

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    :cond_e
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextColor:I

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    :goto_3
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentBackgroundColor:I

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mRadius:F

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingLeft:I

    int-to-float v5, v5

    add-float/2addr v5, v0

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingTop:I

    int-to-float v6, v6

    add-float/2addr v6, v0

    iget-object v7, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v0, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mRotation:F

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mRadius:F

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingLeft:I

    int-to-float v6, v6

    add-float/2addr v6, v5

    iget v7, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingTop:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    invoke-virtual {p1, v0, v6, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mRadius:F

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingTop:I

    int-to-float v5, v5

    add-float/2addr v0, v5

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentText:Ljava/lang/String;

    iget v3, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingLeft:I

    int-to-float v3, v3

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mRadius:F

    add-float/2addr v3, v5

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNumWidth:F

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXWidth:F

    add-float/2addr v5, v6

    div-float/2addr v5, v1

    sub-float/2addr v3, v5

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNumHeight:F

    neg-float v5, v5

    div-float/2addr v5, v1

    add-float/2addr v5, v4

    iget-object v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingLeft:I

    int-to-float v3, v0

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutWidth:I

    sub-int/2addr v5, v0

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingRight:I

    sub-int/2addr v5, v0

    int-to-float v0, v5

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNumWidth:F

    add-float/2addr v0, v5

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXWidth:F

    sub-float/2addr v0, v5

    div-float/2addr v0, v1

    add-float/2addr v3, v0

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXHeight:F

    neg-float v0, v0

    div-float/2addr v0, v1

    add-float/2addr v0, v4

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v0, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_6

    :cond_f
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentText:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentBackgroundColor:I

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mRadius:F

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingLeft:I

    int-to-float v5, v5

    add-float/2addr v5, v0

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingTop:I

    int-to-float v6, v6

    add-float/2addr v6, v0

    iget-object v7, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v0, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mIsSelect:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextSelectColor:I

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_4

    :cond_10
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextColor:I

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mRotation:F

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mRadius:F

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingLeft:I

    int-to-float v6, v6

    add-float/2addr v6, v5

    iget v7, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingTop:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    invoke-virtual {p1, v0, v6, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mRadius:F

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingTop:I

    int-to-float v5, v5

    add-float/2addr v0, v5

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mIsSelect:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentText:Ljava/lang/String;

    iget v3, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingLeft:I

    int-to-float v3, v3

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mRadius:F

    add-float/2addr v3, v5

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNumWidth:F

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXWidth:F

    add-float/2addr v5, v6

    div-float/2addr v5, v1

    sub-float/2addr v3, v5

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNumHeight:F

    neg-float v5, v5

    div-float/2addr v5, v1

    add-float/2addr v5, v4

    iget-object v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingLeft:I

    int-to-float v3, v0

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutWidth:I

    sub-int/2addr v5, v0

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingRight:I

    sub-int/2addr v5, v0

    int-to-float v0, v5

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNumWidth:F

    add-float/2addr v0, v5

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXWidth:F

    sub-float/2addr v0, v5

    div-float/2addr v0, v1

    add-float/2addr v3, v0

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXHeight:F

    neg-float v0, v0

    div-float/2addr v0, v1

    add-float/2addr v0, v4

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v0, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_11
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentText:Ljava/lang/String;

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mLayoutPaddingLeft:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mRadius:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNumWidth:F

    div-float/2addr v3, v1

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNumHeight:F

    neg-float v3, v3

    div-float/2addr v3, v1

    add-float/2addr v3, v4

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_12
    :goto_6
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentBackgroundColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setNormalBackgroundColor(ZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isBackGrounp",
            "isSuperMoon"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v0

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationZoom()Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060455

    invoke-interface {v1, v2, v3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;->getZoomRes(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextColor:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060458

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextSelectColor:I

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06044c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentType:I

    const/4 v3, 0x2

    const v4, 0x7f06044a

    const v5, 0x7f060453

    const v6, 0x7f060451

    if-eq v2, v3, :cond_5

    const/4 v3, 0x3

    const v7, 0x7f06045a

    if-eq v2, v3, :cond_4

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNormalBackgroundColor:I

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mSelectBackgroundColor:I

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setBackgroundColor(I)V

    goto/16 :goto_2

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNormalBackgroundColor:I

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p2

    invoke-virtual {p2, v6}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mSelectBackgroundColor:I

    iget-boolean p2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mIsSelect:Z

    if-nez p2, :cond_8

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setBackgroundColor(I)V

    goto/16 :goto_2

    :cond_2
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p1

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationZoom()Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p2, v1, v7}, Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;->getZoomRes(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNormalBackgroundColor:I

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mSelectBackgroundColor:I

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setBackgroundColor(I)V

    goto/16 :goto_2

    :cond_3
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p1

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationZoom()Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p2, v0, v7}, Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;->getZoomRes(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNormalBackgroundColor:I

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationZoom()Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;->getIndicatorColor()I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mSelectBackgroundColor:I

    iget-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mIsSelect:Z

    if-nez p1, :cond_8

    iget p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNormalBackgroundColor:I

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setBackgroundColor(I)V

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p1

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationZoom()Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p2, v0, v7}, Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;->getZoomRes(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNormalBackgroundColor:I

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mSelectBackgroundColor:I

    iget-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mIsSelect:Z

    if-nez p1, :cond_8

    iget p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNormalBackgroundColor:I

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setBackgroundColor(I)V

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNormalBackgroundColor:I

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mSelectBackgroundColor:I

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setBackgroundColor(I)V

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_7

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p1

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p1

    :goto_1
    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNormalBackgroundColor:I

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p2

    invoke-virtual {p2, v6}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mSelectBackgroundColor:I

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setBackgroundColor(I)V

    :cond_8
    :goto_2
    return-void
.end method

.method public setRotation(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotation"
        }
    .end annotation

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mRotation:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentText:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    const-string v0, "X"

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXWidth:F

    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    move-result p1

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    add-float/2addr p1, v0

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXHeight:F

    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNumWidth:F

    iget p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mXHeight:F

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNumHeight:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setType(I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentType:I

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v0

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationZoom()Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060455

    invoke-interface {v1, v2, v3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;->getZoomRes(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextColor:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060458

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextSelectColor:I

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x3

    const v1, 0x7f06045a

    const v2, 0x7f070acb

    const v3, 0x7f060451

    const/4 v4, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    new-array p1, v6, [Landroid/view/View;

    aput-object p0, p1, v5

    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->touchScaleTint([Landroid/view/View;)V

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mSelectBackgroundColor:I

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/16 :goto_0

    :cond_0
    new-array p1, v6, [Landroid/view/View;

    aput-object p0, p1, v5

    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->touchScale([Landroid/view/View;)V

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationZoom()Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;->getIndicatorColor()I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mSelectBackgroundColor:I

    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p1

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationZoom()Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;->getZoomRes(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNormalBackgroundColor:I

    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mShadowRadius:F

    iget p0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mShadowColor:I

    invoke-virtual {p1, v0, v4, v4, p0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/android/camera/animation/FolmeUtils;->touchTint(Landroid/view/View;)V

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mSelectBackgroundColor:I

    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p1

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationZoom()Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;->getZoomRes(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNormalBackgroundColor:I

    iget-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mIsOnlyZoomCount:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mShadowRadius:F

    iget p0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mShadowColor:I

    invoke-virtual {p1, v0, v4, v4, p0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setZoomRatio(F)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "zoomRatio"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/camera/zoom/HybridZoomingSystem;->toDecimal(F)F

    move-result p1

    const/high16 v0, 0x41200000    # 10.0f

    mul-float v1, p1, v0

    rem-float/2addr v1, v0

    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    float-to-int v0, p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setText(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, ""

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120076

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public toToggle(ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "on",
            "isAnimator"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mIsSelect:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mBackColorAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mBackColorAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mBackColorAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_1
    iput-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mIsSelect:Z

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "backgroundColor"

    if-eqz p1, :cond_2

    new-array p1, v1, [I

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNormalBackgroundColor:I

    aput v1, p1, v0

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mSelectBackgroundColor:I

    aput v0, p1, p2

    invoke-static {p0, v2, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mBackColorAnim:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_2
    new-array p1, v1, [I

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mSelectBackgroundColor:I

    aput v1, p1, v0

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNormalBackgroundColor:I

    aput v0, p1, p2

    invoke-static {p0, v2, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mBackColorAnim:Landroid/animation/ValueAnimator;

    :goto_0
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mBackColorAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mBackColorAnim:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/animation/ArgbEvaluator;

    invoke-direct {p2}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mBackColorAnim:Landroid/animation/ValueAnimator;

    new-instance p2, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p2}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mBackColorAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_3
    if-eqz p1, :cond_4

    iget p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mSelectBackgroundColor:I

    goto :goto_1

    :cond_4
    iget p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNormalBackgroundColor:I

    :goto_1
    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentBackgroundColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
