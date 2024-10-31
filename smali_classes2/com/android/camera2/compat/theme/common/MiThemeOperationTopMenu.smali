.class public Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawCircle(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "currentCircleX",
            "viewHeight",
            "outRadius",
            "radius",
            "circlePaint"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sub-float/2addr p3, p4

    invoke-virtual {p1, p2, p3, p5, p6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getBackgroundColor()I
    .locals 1

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p0

    const v0, 0x7f0603d0

    invoke-virtual {p0, v0}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getBackgroundPaint(Landroid/content/Context;)Landroid/graphics/Paint;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    new-instance p0, Landroid/graphics/Paint;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroid/graphics/Paint;-><init>(I)V

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p1

    const v0, 0x7f060038

    invoke-virtual {p1, v0}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-object p0
.end method

.method public getChildMarginWidth(F)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "childMargin"
        }
    .end annotation

    return p1
.end method

.method public getCircleRadius(F)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "radius"
        }
    .end annotation

    return p1
.end method

.method public getClickAnimation(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->touchItemScale(Landroid/view/View;)V

    return-void
.end method

.method public getColorCircleBackgroundView(Lcom/android/camera/ui/ColorCircleBackgroundView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backgroundView"
        }
    .end annotation

    return-void
.end method

.method public getConfigSelectColor(ZLcom/airbnb/lottie/LottieAnimationView;FLcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "needPlayAnimation",
            "imageView",
            "animationScaleSize",
            "resource",
            "textView",
            "rightAngleView"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p0

    const p6, 0x7f0603d0

    invoke-virtual {p0, p6}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p0

    invoke-virtual {p5, p0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p4}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->isSwitchOn()Z

    move-result p0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    invoke-virtual {p2}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    invoke-virtual {p4}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->getTopResourceId()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p0

    const p5, 0x7f0600c7

    invoke-virtual {p0, p5}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    invoke-virtual {p4}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->getTopResourceId()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p0

    const p5, 0x7f0600c3

    invoke-virtual {p0, p5}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/LottieAnimationView;->setScale(F)V

    invoke-virtual {p4}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->getTopSelectedAnimID()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p0

    invoke-virtual {p0}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00O0ooo()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {p2}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_2
    return-void
.end method

.method public getCvTypeComponentDataItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "items"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public getDisableColor()I
    .locals 1

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p0

    const v0, 0x7f0603be

    invoke-virtual {p0, v0}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getDuration()I
    .locals 0

    const/16 p0, 0x12c

    return p0
.end method

.method public getExtraMenuAnimator(ZLandroid/view/ViewGroup;Lcom/android/camera/ui/ShapeBackGroundView;IIIIILandroid/animation/Animator$AnimatorListener;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "isExtraMenuShowing",
            "topConfigViewGroup",
            "topBackgroundView",
            "originHeight",
            "targetHeight",
            "fromAlpha",
            "toAlpha",
            "degree",
            "animatorListener"
        }
    .end annotation

    move-object v0, p2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-static {p2, v1}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    goto :goto_0

    :cond_0
    sub-int v2, p4, p5

    int-to-float v2, v2

    invoke-static {p2, v2}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    :goto_0
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v2, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v2}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    invoke-virtual {p3}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentRadius()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenu;->getShapeBackGroundViewRadius()I

    move-result v8

    const/16 v9, 0xc8

    move-object v2, p3

    move/from16 v3, p6

    move/from16 v4, p7

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v10, p9

    invoke-virtual/range {v2 .. v10}, Lcom/android/camera/ui/ShapeBackGroundView;->startBackGroundAnimator(IIIIIIILandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public getIndicatorColor()I
    .locals 0

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result p0

    return p0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 0

    new-instance p0, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    return-object p0
.end method

.method public getItemWidth(IIIIF)F
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
            "measuredWidth",
            "paddingLeft",
            "paddingRight",
            "childCount",
            "childMargin"
        }
    .end annotation

    sub-int/2addr p1, p2

    sub-int/2addr p1, p3

    int-to-float p0, p1

    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr p5, p1

    int-to-float p1, p4

    mul-float/2addr p5, p1

    sub-float/2addr p0, p5

    div-float/2addr p0, p1

    return p0
.end method

.method public getMulitItem()I
    .locals 0

    const p0, 0x7f0d00e9

    return p0
.end method

.method public getNormalColor()I
    .locals 1

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p0

    const v0, 0x7f0600fe

    invoke-virtual {p0, v0}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getRectHeight()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getScaleValue()F
    .locals 0

    const p0, 0x3f666666    # 0.9f

    return p0
.end method

.method public getShapeBackGroundViewRadius()I
    .locals 0

    const/16 p0, 0x42

    return p0
.end method

.method public getTextSelectColor()I
    .locals 1

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p0

    const v0, 0x7f0600c7

    invoke-virtual {p0, v0}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTimerBurstBackgroundCircleRadius(F)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "radius"
        }
    .end annotation

    return p1
.end method

.method public getTimerBurstBackgroundColor()I
    .locals 1

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p0

    const v0, 0x7f0603d8

    invoke-virtual {p0, v0}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTimerBurstBackgroundPaint(Landroid/content/Context;)Landroid/graphics/Paint;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    new-instance p0, Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p1

    const v0, 0x7f0603d8

    invoke-virtual {p1, v0}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-object p0
.end method

.method public getTimerBurstCircleRadius(F)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "radius"
        }
    .end annotation

    return p1
.end method

.method public getTimerBurstCurrentTextColor()I
    .locals 0

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result p0

    return p0
.end method

.method public getTimerBurstPinCircleColor()I
    .locals 1

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p0

    const v0, 0x7f0603e1

    invoke-virtual {p0, v0}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTimerBurstPinCircleOverColor()I
    .locals 1

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p0

    const v0, 0x7f0603e5

    invoke-virtual {p0, v0}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTimerBurstSeekBarAnimator()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getTimerBurstSeekBarInfinityColor()I
    .locals 1

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p0

    const v0, 0x7f0603db

    invoke-virtual {p0, v0}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTimerBurstSeekBarInfinitySelectedColor()I
    .locals 0

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result p0

    return p0
.end method

.method public getTimerBurstTextColor()I
    .locals 1

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p0

    const v0, 0x7f0603d0

    invoke-virtual {p0, v0}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getToggleItem()I
    .locals 0

    const p0, 0x7f0d00eb

    return p0
.end method

.method public getTopMenuOpenAnimation(Ljava/util/List;IIILjava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "views",
            "row",
            "totalRow",
            "animateHeight",
            "rowHeightLists"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;III",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move/from16 v0, p2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    const v4, 0x3e3851ec    # 0.18f

    const/4 v5, 0x1

    add-int/lit8 v6, p3, -0x1

    sub-int v7, v6, v0

    int-to-float v7, v7

    const v8, 0x3c23d70a    # 0.01f

    mul-float/2addr v8, v7

    sub-float/2addr v4, v8

    const v8, 0x3fae147b    # 1.36f

    const v9, 0x3ca3d70a    # 0.02f

    mul-float/2addr v7, v9

    sub-float/2addr v8, v7

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v9, 0x2

    new-array v10, v9, [F

    const/4 v11, 0x0

    move/from16 v12, p4

    neg-int v13, v12

    int-to-float v13, v13

    aput v13, v10, v11

    const/4 v11, 0x0

    aput v11, v10, v5

    invoke-static {v3, v7, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-instance v7, Landroid/view/animation/PathInterpolator;

    const v10, 0x3e99999a    # 0.3f

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v7, v4, v8, v10, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v5, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v7, 0x208

    int-to-long v10, v6

    const-wide/16 v13, 0x14

    mul-long v15, v10, v13

    move-wide/from16 v17, v10

    int-to-long v9, v0

    mul-long/2addr v13, v9

    sub-long v13, v15, v13

    sub-long/2addr v7, v13

    invoke-virtual {v5, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v5, v13, v14}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v4, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v4}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x190

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x32

    mul-long v6, v17, v4

    mul-long/2addr v9, v4

    sub-long/2addr v6, v9

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getTopMenuRes(Landroid/content/Context;I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "res"
        }
    .end annotation

    return p2
.end method

.method public reInit(II)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "currentMode",
            "cameraId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/android/camera/data/data/ComponentDataItem;

    const v2, 0x7f0806aa

    const v3, 0x7f0806aa

    const v4, 0x7f1207e0

    const v5, 0x7f1207e0

    const-string v6, "jiugongge"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;ZI)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v11, 0x7f08064a

    const v12, 0x7f08064a

    const v13, 0x7f1207df

    const v14, 0x7f1207df

    const-string v15, "golden_section"

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f08065c

    const v4, 0x7f08065c

    const v5, 0x7f1207e1

    const v6, 0x7f1207e1

    const-string v7, "left_golden_spiral"

    const/4 v9, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v11, 0x7f0806b3

    const v12, 0x7f0806b3

    const v13, 0x7f1207e2

    const v14, 0x7f1207e2

    const-string v15, "right_golden_spiral"

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public scaleExtraSubMenu(Landroid/view/View;Landroid/view/View;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "topExtraMenu",
            "isShow"
        }
    .end annotation

    const-wide/16 v0, 0x12c

    if-eqz p3, :cond_0

    new-instance p0, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3f666666    # 0.9f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f666666    # 0.9f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    new-instance p2, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p2}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p0, p2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3f8851ec    # 1.065f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f8851ec    # 1.065f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    new-instance p1, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p1}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p2, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method

.method public setBackgroundAlphaAndRadius(Lcom/android/camera/ui/ShapeBackGroundView;FIIII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "topBackgroundView",
            "value",
            "fromAlpha",
            "toAlpha",
            "backgroundHeight",
            "maskHeight"
        }
    .end annotation

    int-to-float v0, p3

    sub-int/2addr p4, p3

    int-to-float p3, p4

    mul-float/2addr p3, p2

    add-float/2addr v0, p3

    float-to-int p3, v0

    invoke-virtual {p0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenu;->getShapeBackGroundViewRadius()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, p2

    float-to-int p0, p0

    invoke-virtual {p1, p3, p0, p5, p6}, Lcom/android/camera/ui/ShapeBackGroundView;->setBackgroundAlphaAndRadius(IIII)V

    return-void
.end method
