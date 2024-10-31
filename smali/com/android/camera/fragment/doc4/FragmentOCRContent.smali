.class public Lcom/android/camera/fragment/doc4/FragmentOCRContent;
.super Lcom/android/camera/fragment/BaseFragment;

# interfaces
.implements Lcom/android/camera/protocol/protocols/ocr/OCRContentProtocol;
.implements Lcom/android/camera/protocol/protocols/HandleBackTrace;
.implements Lcom/android/camera/fragment/doc4/Doc4TransitionView$EventListener;
.implements Lcom/xiaomi/ocr/view/GuideView$EventListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DURATION_HIDE_OCR_CONTENT:J = 0xc8L

.field private static final MAX_PARTICLE_PLAY_TIME:J = 0xbb8L

.field private static final MIN_PARTICLE_PLAY_TIME:J = 0x258L

.field private static final TAG:Ljava/lang/String; = "FragmentOCRContent"


# instance fields
.field private final mBackgroundViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCloseBtn:Lcom/android/camera/ui/ColorImageView;

.field private mContentBound:Landroid/view/View;

.field private mContentPageEles:[Landroid/view/View;

.field private mDoc4TransitionView:Lcom/android/camera/fragment/doc4/Doc4TransitionView;

.field private final mFadeInterpolator:Landroid/view/animation/Interpolator;

.field private mGuideView:Lcom/xiaomi/ocr/view/GuideView;

.field private mHideOCRContentAnim:Landroid/animation/ValueAnimator;

.field private mHintVisibitityAnim:Landroid/animation/ValueAnimator;

.field private mIsOCRDone:Z

.field private mIsParticleAnimTimeout:Z

.field private final mMainHandler:Landroid/os/Handler;

.field private mOCRContentHint:Landroid/widget/TextView;

.field private mOCRTaskId:J

.field private final mOnParticleAnimTimeout:Ljava/lang/Runnable;

.field private mParticleAnimView:Lcom/xiaomi/ocr/view/ParticleAnimView;

.field private mParticleAnimatorStartTime:J

.field private mRootView:Landroid/view/View;

.field private mShowIconAndHintAnim:Landroid/animation/ValueAnimator;

.field private final mUpdateSelectedUI:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    invoke-direct {p0}, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->getFadeInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mFadeInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mBackgroundViews:Ljava/util/HashMap;

    new-instance v0, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/ooOOo0/Oooo0;

    invoke-direct {v0, p0}, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/ooOOo0/Oooo0;-><init>(Lcom/android/camera/fragment/doc4/FragmentOCRContent;)V

    iput-object v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mOnParticleAnimTimeout:Ljava/lang/Runnable;

    new-instance v0, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/ooOOo0/OooOOOO;

    invoke-direct {v0, p0}, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/ooOOo0/OooOOOO;-><init>(Lcom/android/camera/fragment/doc4/FragmentOCRContent;)V

    iput-object v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mUpdateSelectedUI:Ljava/lang/Runnable;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mOCRTaskId:J

    return-void
.end method

.method public static synthetic OooO0OO(Lcom/android/camera/fragment/doc4/FragmentOCRContent;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->updateSelectUI()V

    return-void
.end method

.method public static synthetic OooO0o0(Lcom/android/camera/fragment/doc4/FragmentOCRContent;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->onParticleAnimTimeout()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/doc4/FragmentOCRContent;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->hideOCRContent()V

    return-void
.end method

.method private getDeviceOrientation()I
    .locals 1

    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragment;->mAppController:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/ooOOo0/OooO00o;->OooO00o:LOooO0OO/OooO0O0/OooO00o/o00O0OoO/ooOOo0/OooO00o;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/ooOOo0/o0Oo0oo;->OooO00o:LOooO0OO/OooO0O0/OooO00o/o00O0OoO/ooOOo0/o0Oo0oo;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/ooOOo0/OooO0O0;->OooO00o:LOooO0OO/OooO0O0/OooO00o/o00O0OoO/ooOOo0/OooO0O0;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private getFadeInterpolator()Landroid/view/animation/Interpolator;
    .locals 0

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p0

    invoke-virtual {p0}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0O0OOO0()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lmiuix/view/animation/ExponentialEaseOutInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/ExponentialEaseOutInterpolator;-><init>()V

    return-object p0

    :cond_0
    new-instance p0, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    return-object p0
.end method

.method private hideOCRContent()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->isOCRContentDisplaying()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mContentPageEles:[Landroid/view/View;

    sget-object v1, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/ooOOo0/OooOo00;->OooO00o:LOooO0OO/OooO0O0/OooO00o/o00O0OoO/ooOOo0/OooOo00;

    invoke-static {v0, v1}, LOooO0OO/OooO0O0/OooO0OO/OooO0O0;->OooO00o([Ljava/lang/Object;LOooO0OO/OooO0O0/OooO0OO/OooO0O0$OooO00o;)V

    iget-object v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mDoc4TransitionView:Lcom/android/camera/fragment/doc4/Doc4TransitionView;

    invoke-virtual {v0}, Lcom/android/camera/fragment/doc4/Doc4TransitionView;->reset()V

    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/ooOOo0/o00O0O;->o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00O0OoO/ooOOo0/o00O0O;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Lcom/android/camera/protocol/protocols/DualController;->impl()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/ooOOo0/o0OOO0o;->o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00O0OoO/ooOOo0/o0OOO0o;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Lcom/xiaomi/ocr/sdk_ocr/OCREngineWrapper;->getInstance()Lcom/xiaomi/ocr/sdk_ocr/OCREngineWrapper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/xiaomi/ocr/sdk_ocr/OCREngineWrapper;->releaseRegionDetection(IZ)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->toggleAccessibilityFocus(Z)V

    invoke-static {}, Lcom/android/camera/protocol/protocols/BaseDelegate;->impl()Ljava/util/Optional;

    move-result-object v0

    sget-object v2, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/ooOOo0/o000oOoO;->o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00O0OoO/ooOOo0/o000oOoO;

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/BaseFragment;->setClickEnable(Z)V

    return-void
.end method

.method private hideOCRContentWithAnim()V
    .locals 10

    iget-object v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mHideOCRContentAnim:Landroid/animation/ValueAnimator;

    invoke-static {v0}, LOooO0OO/OooO0O0/OooO0OO/OooOO0O/OooOO0;->OooO0O0(Landroid/animation/Animator;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "FragmentOCRContent"

    const-string v1, "hideOCRContentWithAnim: anim running, return"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/BaseFragment;->setClickEnable(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mGuideView:Lcom/xiaomi/ocr/view/GuideView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mGuideView:Lcom/xiaomi/ocr/view/GuideView;

    invoke-virtual {v0}, Lcom/xiaomi/ocr/view/GuideView;->cancelSelection()Z

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mShowIconAndHintAnim:Landroid/animation/ValueAnimator;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mHintVisibitityAnim:Landroid/animation/ValueAnimator;

    aput-object v2, v0, v1

    invoke-static {v0}, LOooO0OO/OooO0O0/OooO0OO/OooOO0O/OooOO0;->OooO00o([Landroid/animation/Animator;)V

    new-instance v0, LOooO0OO/OooO0O0/OooO0OO/OooOO0O/OooOO0$OooO0OO;

    const/4 v4, 0x0

    const-wide/16 v5, 0xc8

    iget-object v7, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mFadeInterpolator:Landroid/view/animation/Interpolator;

    new-instance v8, Lcom/android/camera/fragment/doc4/FragmentOCRContent$1;

    invoke-direct {v8, p0}, Lcom/android/camera/fragment/doc4/FragmentOCRContent$1;-><init>(Lcom/android/camera/fragment/doc4/FragmentOCRContent;)V

    iget-object v9, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mContentPageEles:[Landroid/view/View;

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, LOooO0OO/OooO0O0/OooO0OO/OooOO0O/OooOO0$OooO0OO;-><init>(ZJLandroid/view/animation/Interpolator;LOooO0OO/OooO0O0/OooO0OO/OooOO0O/OooOO0$OooO0O0;[Landroid/view/View;)V

    invoke-static {v0}, LOooO0OO/OooO0O0/OooO0OO/OooOO0O/OooOO0;->OooO0o0(LOooO0OO/OooO0O0/OooO0OO/OooOO0O/OooOO0$OooO0OO;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mHideOCRContentAnim:Landroid/animation/ValueAnimator;

    return-void
.end method

.method private initCloseButton()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mCloseBtn:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayHeight()I

    move-result v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mCloseBtn:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mCloseBtn:Lcom/android/camera/ui/ColorImageView;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTips()Lcom/android/camera2/compat/theme/common/MiThemeOperationTipsInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTipsInterface;->getOCRTipIcon()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v0

    invoke-virtual {v0}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0O0OOO0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mCloseBtn:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mCloseBtn:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_0
    instance-of v0, p0, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_1

    :cond_1
    instance-of v0, p0, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic lambda$hideOCRContent$4(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "ele"
        }
    .end annotation

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public static synthetic lambda$hideOCRContent$5(Lcom/android/camera/protocol/protocols/BaseDelegate;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "baseDelegate"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [I

    const/16 v1, 0x2f

    invoke-interface {p0, v1, v0}, Lcom/android/camera/protocol/protocols/BaseDelegate;->delegateEvent(I[I)V

    return-void
.end method

.method private synthetic lambda$initView$0()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mDoc4TransitionView:Lcom/android/camera/fragment/doc4/Doc4TransitionView;

    iget-object v1, p0, Lcom/android/camera/fragment/BaseFragment;->mAppController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    sget-object v2, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/ooOOo0/OooO00o;->OooO00o:LOooO0OO/OooO0O0/OooO00o/o00O0OoO/ooOOo0/OooO00o;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    sget-object v2, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/ooOOo0/oo000o;->OooO00o:LOooO0OO/OooO0O0/OooO00o/o00O0OoO/ooOOo0/oo000o;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    sget-object v2, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/ooOOo0/o00Ooo;->OooO00o:LOooO0OO/OooO0O0/OooO00o/o00O0OoO/ooOOo0/o00Ooo;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    sget-object v2, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/ooOOo0/o00oO0o;->OooO00o:LOooO0OO/OooO0O0/OooO00o/o00O0OoO/ooOOo0/o00oO0o;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/doc4/Doc4TransitionView;->setPreviewSize(Landroid/util/Size;)V

    invoke-direct {p0}, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->showOCRContent()V

    return-void
.end method

.method private synthetic lambda$showOCRContent$1(Lcom/xiaomi/ocr/sdk_ocr/OCRData$RegionData;Lcom/android/zxing/OCRDecoder;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "regionData",
            "ocrDecoder"
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mOCRTaskId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mOCRTaskId:J

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/zxing/OCRDecoder;->recognizeOCRContent(Lcom/xiaomi/ocr/sdk_ocr/OCRData$RegionData;J)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static synthetic lambda$showOCRContent$2(Lcom/android/camera/protocol/protocols/BottomPopupTips;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "bottomPopupTips"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->hideAllTipImage(Z)V

    return-void
.end method

.method public static synthetic lambda$showOCRContent$3(Lcom/android/camera/protocol/protocols/DualController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "dualController"
        }
    .end annotation

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/DualController;->hideAllPanel()V

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/DualController;->hideZoomButton()V

    return-void
.end method

.method public static synthetic lambda$toggleAccessibilityFocus$6(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "view",
            "backupVal"
        }
    .end annotation

    const/4 p1, 0x4

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    return-void
.end method

.method private onParticleAnimTimeout()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FragmentOCRContent"

    const-string/jumbo v2, "onParticleAnimTimeout: enter"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mIsParticleAnimTimeout:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120a43

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private populateBgViews()V
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xa

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    iget-object v3, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mBackgroundViews:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v2, v3

    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mBackgroundViews:Ljava/util/HashMap;

    invoke-virtual {v4}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x5
        0x3
        0x4
        0x6
        0x2
        0x7
        0x8
        0x14
        0x15
    .end array-data
.end method

.method private showGuideView(Landroid/graphics/Bitmap;Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bitmap",
            "contentBound"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mDoc4TransitionView:Lcom/android/camera/fragment/doc4/Doc4TransitionView;

    invoke-virtual {v0}, Lcom/android/camera/fragment/doc4/Doc4TransitionView;->isTransiting()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "FragmentOCRContent"

    if-eqz v0, :cond_0

    new-array p0, v1, [Ljava/lang/Object;

    const-string/jumbo p1, "showGuideView: waiting transition, return"

    invoke-static {v2, p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mIsOCRDone:Z

    if-nez v0, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string/jumbo p2, "showGuideView: waiting ocr recognition, play particle anim and return"

    invoke-static {v2, p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mParticleAnimatorStartTime:J

    iget-object p1, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mParticleAnimView:Lcom/xiaomi/ocr/view/ParticleAnimView;

    invoke-virtual {p1}, Lcom/xiaomi/ocr/view/ParticleAnimView;->startAnim()V

    iget-object p1, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mOnParticleAnimTimeout:Ljava/lang/Runnable;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "showGuideView: start showing"

    invoke-static {v2, v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1, p2}, Lcom/xiaomi/ocr/view/util/OCRUtils;->calculateDisplay(Landroid/graphics/Bitmap;Landroid/view/View;)Landroid/util/Pair;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mGuideView:Lcom/xiaomi/ocr/view/GuideView;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Matrix;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/RectF;

    invoke-virtual {p2, v0, p1}, Lcom/xiaomi/ocr/view/GuideView;->updateDisplay(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mParticleAnimatorStartTime:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x258

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mUpdateSelectedUI:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mUpdateSelectedUI:Ljava/lang/Runnable;

    sub-long/2addr v2, p1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->updateSelectUI()V

    :goto_0
    return-void
.end method

.method private showOCRContent()V
    .locals 9

    iget-object v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mDoc4TransitionView:Lcom/android/camera/fragment/doc4/Doc4TransitionView;

    invoke-virtual {v0}, Lcom/android/camera/fragment/doc4/Doc4TransitionView;->isTransiting()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/BaseFragment;->setClickEnable(Z)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->toggleAccessibilityFocus(Z)V

    invoke-static {}, Lcom/xiaomi/ocr/sdk_ocr/OCREngineWrapper;->getInstance()Lcom/xiaomi/ocr/sdk_ocr/OCREngineWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/ocr/sdk_ocr/OCREngineWrapper;->getOCRRegionData()Lcom/xiaomi/ocr/sdk_ocr/OCRData$RegionData;

    move-result-object v4

    const-string v2, "FragmentOCRContent"

    if-eqz v4, :cond_3

    iget-object v3, v4, Lcom/xiaomi/ocr/sdk_ocr/OCRData$RegionData;->regionImg:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    iget-object v3, v4, Lcom/xiaomi/ocr/sdk_ocr/OCRData$RegionData;->texts_locations:[Lcom/xiaomi/ocr/sdk_ocr/OCRData$Location;

    if-eqz v3, :cond_3

    array-length v3, v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mIsOCRDone:Z

    iput-boolean v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mIsParticleAnimTimeout:Z

    invoke-static {}, Lcom/android/zxing/OCRDecoder;->getInstanceOpt()Ljava/util/Optional;

    move-result-object v3

    new-instance v5, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/ooOOo0/OooOOO;

    invoke-direct {v5, p0, v4}, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/ooOOo0/OooOOO;-><init>(Lcom/android/camera/fragment/doc4/FragmentOCRContent;Lcom/xiaomi/ocr/sdk_ocr/OCRData$RegionData;)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    new-array v3, v0, [Ljava/lang/Object;

    const-string/jumbo v5, "showOCRContent: start showing content"

    invoke-static {v2, v5, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/xiaomi/ocr/sdk_ocr/OCREngineWrapper;->getInstance()Lcom/xiaomi/ocr/sdk_ocr/OCREngineWrapper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaomi/ocr/sdk_ocr/OCREngineWrapper;->suppressRegionDetection(I)V

    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl()Ljava/util/Optional;

    move-result-object v1

    sget-object v2, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/ooOOo0/Oooo000;->o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00O0OoO/ooOOo0/Oooo000;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Lcom/android/camera/protocol/protocols/DualController;->impl()Ljava/util/Optional;

    move-result-object v1

    sget-object v2, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/ooOOo0/o0OoOo0;->o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00O0OoO/ooOOo0/o0OoOo0;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl()Ljava/util/Optional;

    move-result-object v1

    sget-object v2, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/ooOOo0/o0ooOOo;->o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00O0OoO/ooOOo0/o0ooOOo;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->needOCRFirstUseBubble()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setOCRFirstUseBubble(Z)V

    :cond_2
    iget-object v1, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mDoc4TransitionView:Lcom/android/camera/fragment/doc4/Doc4TransitionView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mDoc4TransitionView:Lcom/android/camera/fragment/doc4/Doc4TransitionView;

    new-instance v5, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mContentBound:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mContentBound:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mContentBound:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget-object v6, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mContentBound:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-direct {v5, v0, v1, v2, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0}, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->getDeviceOrientation()I

    move-result v6

    iget-object v7, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mFadeInterpolator:Landroid/view/animation/Interpolator;

    move-object v8, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/camera/fragment/doc4/Doc4TransitionView;->startTransition(Lcom/xiaomi/ocr/sdk_ocr/OCRData$RegionData;Landroid/graphics/Rect;ILandroid/view/animation/Interpolator;Lcom/android/camera/fragment/doc4/Doc4TransitionView$EventListener;)V

    return-void

    :cond_3
    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v3, "showOCRContent: regionData null"

    invoke-static {v2, v3, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f120606

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/BaseFragment;->setClickEnable(Z)V

    return-void
.end method

.method private toggleAccessibilityFocus(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isShowing"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mRootView:Landroid/view/View;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    iget-object p0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mBackgroundViews:Ljava/util/HashMap;

    sget-object p1, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/ooOOo0/OooOo;->OooO00o:LOooO0OO/OooO0O0/OooO00o/o00O0OoO/ooOOo0/OooOo;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mRootView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    iget-object p0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mBackgroundViews:Ljava/util/HashMap;

    sget-object p1, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/ooOOo0/o00Oo0;->OooO00o:LOooO0OO/OooO0O0/OooO00o/o00O0OoO/ooOOo0/o00Oo0;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    :goto_0
    return-void
.end method

.method private updateSelectUI()V
    .locals 11

    iget-object v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mParticleAnimView:Lcom/xiaomi/ocr/view/ParticleAnimView;

    invoke-virtual {v0}, Lcom/xiaomi/ocr/view/ParticleAnimView;->stopAnim()V

    iget-object v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mOnParticleAnimTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mGuideView:Lcom/xiaomi/ocr/view/GuideView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mGuideView:Lcom/xiaomi/ocr/view/GuideView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/BaseFragment;->setClickEnable(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mGuideView:Lcom/xiaomi/ocr/view/GuideView;

    invoke-virtual {v0}, Lcom/xiaomi/ocr/view/GuideView;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mOCRContentHint:Landroid/widget/TextView;

    const v3, 0x7f120a17

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mGuideView:Lcom/xiaomi/ocr/view/GuideView;

    invoke-virtual {v0}, Lcom/xiaomi/ocr/view/GuideView;->showSelectFirstTime()V

    goto :goto_0

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    const-string v3, "FragmentOCRContent"

    const-string/jumbo v4, "updateSelectUI: ocr result null"

    invoke-static {v3, v4, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mOCRContentHint:Landroid/widget/TextView;

    const v3, 0x7f120606

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackOCRCommonTips()V

    :goto_0
    new-instance v0, LOooO0OO/OooO0O0/OooO0OO/OooOO0O/OooOO0$OooO0OO;

    const/4 v5, 0x1

    const-wide/16 v6, 0x1f4

    iget-object v8, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mFadeInterpolator:Landroid/view/animation/Interpolator;

    const/4 v9, 0x0

    const/4 v3, 0x2

    new-array v10, v3, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mOCRContentHint:Landroid/widget/TextView;

    aput-object v3, v10, v1

    iget-object v1, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mCloseBtn:Lcom/android/camera/ui/ColorImageView;

    aput-object v1, v10, v2

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, LOooO0OO/OooO0O0/OooO0OO/OooOO0O/OooOO0$OooO0OO;-><init>(ZJLandroid/view/animation/Interpolator;LOooO0OO/OooO0O0/OooO0OO/OooOO0O/OooOO0$OooO0O0;[Landroid/view/View;)V

    invoke-static {v0}, LOooO0OO/OooO0O0/OooO0OO/OooOO0O/OooOO0;->OooO0o0(LOooO0OO/OooO0O0/OooO0OO/OooOO0O/OooOO0$OooO0OO;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mShowIconAndHintAnim:Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public synthetic OooO0Oo()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->lambda$initView$0()V

    return-void
.end method

.method public synthetic OooO0o(Lcom/xiaomi/ocr/sdk_ocr/OCRData$RegionData;Lcom/android/zxing/OCRDecoder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->lambda$showOCRContent$1(Lcom/xiaomi/ocr/sdk_ocr/OCRData$RegionData;Lcom/android/zxing/OCRDecoder;)V

    return-void
.end method

.method public getFragmentInto()I
    .locals 0

    const p0, 0xffffff8

    return p0
.end method

.method public getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d0094

    return p0
.end method

.method public initView(Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mRootView:Landroid/view/View;

    const v0, 0x7f0a053a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/doc4/Doc4TransitionView;

    iput-object v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mDoc4TransitionView:Lcom/android/camera/fragment/doc4/Doc4TransitionView;

    const v0, 0x7f0a03f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/ocr/view/ParticleAnimView;

    iput-object v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mParticleAnimView:Lcom/xiaomi/ocr/view/ParticleAnimView;

    const v0, 0x7f0a0258

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/ocr/view/GuideView;

    iput-object v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mGuideView:Lcom/xiaomi/ocr/view/GuideView;

    const v0, 0x7f0a0260

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mOCRContentHint:Landroid/widget/TextView;

    const v0, 0x7f0a00cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ColorImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mCloseBtn:Lcom/android/camera/ui/ColorImageView;

    const v0, 0x7f0a013c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mContentBound:Landroid/view/View;

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mDoc4TransitionView:Lcom/android/camera/fragment/doc4/Doc4TransitionView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v3, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mParticleAnimView:Lcom/xiaomi/ocr/view/ParticleAnimView;

    const/4 v4, 0x1

    aput-object v3, v0, v4

    iget-object v3, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mGuideView:Lcom/xiaomi/ocr/view/GuideView;

    const/4 v4, 0x2

    aput-object v3, v0, v4

    iget-object v3, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mOCRContentHint:Landroid/widget/TextView;

    const/4 v4, 0x3

    aput-object v3, v0, v4

    iget-object v3, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mCloseBtn:Lcom/android/camera/ui/ColorImageView;

    const/4 v4, 0x4

    aput-object v3, v0, v4

    iput-object v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mContentPageEles:[Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mGuideView:Lcom/xiaomi/ocr/view/GuideView;

    invoke-virtual {v0, p0}, Lcom/xiaomi/ocr/view/GuideView;->setEventListener(Lcom/xiaomi/ocr/view/GuideView$EventListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mCloseBtn:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->initCloseButton()V

    const v0, 0x7f0a0421

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/Guideline;

    invoke-static {v2}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    invoke-direct {p0}, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->populateBgViews()V

    iget-object p1, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mContentBound:Landroid/view/View;

    new-instance v0, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/ooOOo0/OooOOO0;

    invoke-direct {v0, p0}, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/ooOOo0/OooOOO0;-><init>(Lcom/android/camera/fragment/doc4/FragmentOCRContent;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isOCRContentDisplaying()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mDoc4TransitionView:Lcom/android/camera/fragment/doc4/Doc4TransitionView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onBackEvent(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callingFrom"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v2, 0xa3

    if-ne p1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->isOCRContentDisplaying()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mIsParticleAnimTimeout:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "FragmentOCRContent"

    const-string/jumbo v2, "onBackEvent: hide ocr content"

    invoke-static {v0, v2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->hideOCRContentWithAnim()V

    :cond_1
    return v1

    :cond_2
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->isOCRContentDisplaying()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a053a

    const/4 v2, 0x0

    const-string v3, "FragmentOCRContent"

    if-ne v0, v1, :cond_2

    iget-boolean p1, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mIsParticleAnimTimeout:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mShowIconAndHintAnim:Landroid/animation/ValueAnimator;

    invoke-static {p1}, LOooO0OO/OooO0O0/OooO0OO/OooOO0O/OooOO0;->OooO0O0(Landroid/animation/Animator;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string/jumbo v0, "onClick: transition view"

    invoke-static {v3, v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->hideOCRContentWithAnim()V

    goto :goto_0

    :cond_2
    const v1, 0x7f0a00cd

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    new-array p1, v2, [Ljava/lang/Object;

    const-string/jumbo v0, "onClick: close button"

    invoke-static {v3, v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->hideOCRContentWithAnim()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onOCRRecognitionDone(Lcom/xiaomi/ocr/sdk_ocr/OCRData$RegionData;Lcom/xiaomi/ocr/sdk_ocr/OCRData$OCRResult;J)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "regionData",
            "ocrResult",
            "taskId"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "FragmentOCRContent"

    const-string/jumbo v3, "onOCRRecognitionDone: "

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->isOCRContentDisplaying()Z

    move-result v1

    if-nez v1, :cond_0

    new-array p0, v0, [Ljava/lang/Object;

    const-string/jumbo p1, "onOCRRecognitionDone: ocr content dismissed, ignore the result"

    invoke-static {v2, p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-wide v3, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mOCRTaskId:J

    cmp-long p3, v3, p3

    if-eqz p3, :cond_1

    new-array p0, v0, [Ljava/lang/Object;

    const-string/jumbo p1, "onOCRRecognitionDone: task out of date, ignore the result"

    invoke-static {v2, p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mIsOCRDone:Z

    iget-object p3, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mGuideView:Lcom/xiaomi/ocr/view/GuideView;

    invoke-virtual {p3, p2}, Lcom/xiaomi/ocr/view/GuideView;->setOCRResult(Lcom/xiaomi/ocr/sdk_ocr/OCRData$OCRResult;)V

    iget-object p1, p1, Lcom/xiaomi/ocr/sdk_ocr/OCRData$RegionData;->regionImg:Landroid/graphics/Bitmap;

    iget-object p2, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mContentBound:Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->showGuideView(Landroid/graphics/Bitmap;Landroid/view/View;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onStop()V

    iget-object v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mHideOCRContentAnim:Landroid/animation/ValueAnimator;

    invoke-static {v0}, LOooO0OO/OooO0O0/OooO0OO/OooOO0O/OooOO0;->OooO0O0(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mHideOCRContentAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mGuideView:Lcom/xiaomi/ocr/view/GuideView;

    invoke-virtual {p0}, Lcom/xiaomi/ocr/view/GuideView;->cancelSelection()Z

    :goto_0
    return-void
.end method

.method public onTextSelected(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectedText"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iget-object v1, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mOCRContentHint:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mOCRContentHint:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mHintVisibitityAnim:Landroid/animation/ValueAnimator;

    invoke-static {v1}, LOooO0OO/OooO0O0/OooO0OO/OooOO0O/OooOO0;->OooO0O0(Landroid/animation/Animator;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mHintVisibitityAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    new-instance v1, LOooO0OO/OooO0O0/OooO0OO/OooOO0O/OooOO0$OooO0OO;

    xor-int/lit8 v3, p1, 0x1

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v8, v0, [Landroid/view/View;

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mOCRContentHint:Landroid/widget/TextView;

    aput-object v0, v8, p1

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, LOooO0OO/OooO0O0/OooO0OO/OooOO0O/OooOO0$OooO0OO;-><init>(ZJLandroid/view/animation/Interpolator;LOooO0OO/OooO0O0/OooO0OO/OooOO0O/OooOO0$OooO0O0;[Landroid/view/View;)V

    invoke-static {v1}, LOooO0OO/OooO0O0/OooO0OO/OooOO0O/OooOO0;->OooO0o0(LOooO0OO/OooO0O0/OooO0OO/OooOO0O/OooOO0$OooO0OO;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mHintVisibitityAnim:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public onTransitionCancel()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/BaseFragment;->setClickEnable(Z)V

    return-void
.end method

.method public onTransitionEnd(Lcom/xiaomi/ocr/sdk_ocr/OCRData$RegionData;Landroid/graphics/RectF;F)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "regionData",
            "finalImgBound",
            "imgRadius"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onTransitionEnd: rect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "FragmentOCRContent"

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mIsOCRDone:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mParticleAnimView:Lcom/xiaomi/ocr/view/ParticleAnimView;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p2, Landroid/graphics/RectF;->left:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr p3, v3

    add-float/2addr v2, p3

    float-to-int v2, v2

    iget v3, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p3

    float-to-int v3, v3

    iget v4, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, p3

    float-to-int v4, v4

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p2, p3

    float-to-int p2, p2

    invoke-direct {v1, v2, v3, v4, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/ocr/view/ParticleAnimView;->setBound(Landroid/graphics/Rect;)V

    :cond_0
    iget-object p1, p1, Lcom/xiaomi/ocr/sdk_ocr/OCRData$RegionData;->regionImg:Landroid/graphics/Bitmap;

    iget-object p2, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mContentBound:Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->showGuideView(Landroid/graphics/Bitmap;Landroid/view/View;)V

    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modeCoordinator"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeCoordinator;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/ocr/OCRContentProtocol;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeCoordinator;Lcom/android/camera/protocol/protocols/HandleBackTrace;)V

    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modeCoordinator"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/ocr/OCRContentProtocol;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeCoordinator;Lcom/android/camera/protocol/protocols/HandleBackTrace;)V

    iget-object p1, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mHideOCRContentAnim:Landroid/animation/ValueAnimator;

    invoke-static {p1}, LOooO0OO/OooO0O0/OooO0OO/OooOO0O/OooOO0;->OooO0O0(Landroid/animation/Animator;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mHideOCRContentAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mMainHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mUpdateSelectedUI:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mMainHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mUpdateSelectedUI:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mParticleAnimView:Lcom/xiaomi/ocr/view/ParticleAnimView;

    invoke-virtual {p1}, Lcom/xiaomi/ocr/view/ParticleAnimView;->stopAnim()V

    iget-object p1, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mMainHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mOnParticleAnimTimeout:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mGuideView:Lcom/xiaomi/ocr/view/GuideView;

    invoke-virtual {p1}, Lcom/xiaomi/ocr/view/GuideView;->cancelSelection()Z

    const/4 p1, 0x2

    new-array p1, p1, [Landroid/animation/Animator;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mShowIconAndHintAnim:Landroid/animation/ValueAnimator;

    aput-object v1, p1, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->mHintVisibitityAnim:Landroid/animation/ValueAnimator;

    aput-object v1, p1, v0

    invoke-static {p1}, LOooO0OO/OooO0O0/OooO0OO/OooOO0O/OooOO0;->OooO00o([Landroid/animation/Animator;)V

    :goto_0
    invoke-direct {p0}, Lcom/android/camera/fragment/doc4/FragmentOCRContent;->hideOCRContent()V

    :goto_1
    return-void
.end method
