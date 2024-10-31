.class public Lcom/android/camera/ui/VideoTagView;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Lcom/android/camera/jacoco/JacocoIgnore;
    ignore = false
    key = "isSupportVideoTag"
    type = 0x0
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/VideoTagView$VideoTagCountEvaluator;,
        Lcom/android/camera/ui/VideoTagView$VideoTagCapsuleEvaluator;
    }
.end annotation


# static fields
.field private static final DEFAULT_TAG_MARGIN_LEFT:I

.field private static final DEFAULT_TAG_MARGIN_RIGHT:I

.field private static final SPLIT_LINE_MARGIN:I

.field private static final TAG:Ljava/lang/String; = "VideoTagView"

.field private static final VERTICAL_TAG:I = 0x64

.field public static final VIDEO_TAG_STATE_PAUSE:I = 0x2

.field public static final VIDEO_TAG_STATE_PREPARE:I = 0x0

.field public static final VIDEO_TAG_STATE_RESUME:I = 0x3

.field public static final VIDEO_TAG_STATE_START:I = 0x1

.field public static final VIDEO_TAG_STATE_STOP:I = 0x4


# instance fields
.field private final TEXT_SHADOW_RADIUS:I

.field private isRecordingPause:Z

.field private isShowTagValue:Z

.field private isTagRecording:Z

.field private mContext:Landroid/content/Context;

.field private mNeedRemoveTime:J

.field private mPauseRecordingTime:J

.field private mStartRecordingTime:J

.field private mTagCountValue:Landroid/widget/TextView;

.field private mTagFlag:Landroid/widget/ImageView;

.field private mTagFullLayout:Landroid/widget/FrameLayout;

.field private mVideoTag:Landroid/view/View;

.field private mVideoTagExpandAnim:Landroid/animation/AnimatorSet;

.field private mVideoTagHideAnim:Landroid/animation/AnimatorSet;

.field private mVideoTagNormalSize:I

.field private recordingPauseTagCount:I

.field private srtBuilder:Ljava/lang/StringBuilder;

.field private videoTagCount:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const v0, 0x416e6666    # 14.9f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/VideoTagView;->DEFAULT_TAG_MARGIN_LEFT:I

    const v0, 0x4151999a    # 13.1f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/VideoTagView;->DEFAULT_TAG_MARGIN_RIGHT:I

    const v0, 0x410b3333    # 8.7f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/VideoTagView;->SPLIT_LINE_MARGIN:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/VideoTagView;->TEXT_SHADOW_RADIUS:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/VideoTagView;->videoTagCount:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/VideoTagView;->srtBuilder:Ljava/lang/StringBuilder;

    iput v0, p0, Lcom/android/camera/ui/VideoTagView;->recordingPauseTagCount:I

    return-void
.end method

.method public static synthetic access$202(Lcom/android/camera/ui/VideoTagView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/VideoTagView;->isShowTagValue:Z

    return p1
.end method

.method public static synthetic access$300(Lcom/android/camera/ui/VideoTagView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/VideoTagView;->resetTagView()V

    return-void
.end method

.method private getTime(J)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/camera/ui/VideoTagView;->mStartRecordingTime:J

    sub-long/2addr p1, v0

    iget-wide v0, p0, Lcom/android/camera/ui/VideoTagView;->mNeedRemoveTime:J

    sub-long/2addr p1, v0

    new-instance p0, Ljava/text/SimpleDateFormat;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "HH:mm:ss,SSS"

    invoke-direct {p0, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v0, "GMT+00:00"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initVideoTagAnimator()V
    .locals 9

    iget-object v0, p0, Lcom/android/camera/ui/VideoTagView;->mVideoTagExpandAnim:Landroid/animation/AnimatorSet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/ui/VideoTagView$VideoTagCapsuleEvaluator;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/android/camera/ui/VideoTagView$VideoTagCapsuleEvaluator;-><init>(Lcom/android/camera/ui/VideoTagView;Lcom/android/camera/ui/VideoTagView$1;)V

    new-array v5, v3, [Ljava/lang/Object;

    new-instance v6, Landroid/graphics/PointF;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v7}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v6, v5, v2

    new-instance v6, Landroid/graphics/PointF;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v6, v8, v8}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v6, v5, v1

    invoke-static {v0, v5}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->getTagExpandInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v5, LOooO0OO/OooO0O0/OooO00o/o00OO0O/o0000O0O;

    invoke-direct {v5, p0}, LOooO0OO/OooO0O0/OooO00o/o00OO0O/o0000O0O;-><init>(Lcom/android/camera/ui/VideoTagView;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Lcom/android/camera/ui/VideoTagView$VideoTagCountEvaluator;

    invoke-direct {v5, p0, v4}, Lcom/android/camera/ui/VideoTagView$VideoTagCountEvaluator;-><init>(Lcom/android/camera/ui/VideoTagView;Lcom/android/camera/ui/VideoTagView$1;)V

    new-array v4, v3, [Ljava/lang/Object;

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v7, v7}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v6, v4, v2

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v8, v8}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v6, v4, v1

    invoke-static {v5, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->getTagExpandInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v5, LOooO0OO/OooO0O0/OooO00o/o00OO0O/o0000O;

    invoke-direct {v5, p0}, LOooO0OO/OooO0O0/OooO00o/o00OO0O/o0000O;-><init>(Lcom/android/camera/ui/VideoTagView;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/android/camera/ui/VideoTagView;->mVideoTagExpandAnim:Landroid/animation/AnimatorSet;

    new-array v6, v3, [Landroid/animation/Animator;

    aput-object v0, v6, v2

    aput-object v4, v6, v1

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/camera/ui/VideoTagView;->mVideoTagExpandAnim:Landroid/animation/AnimatorSet;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->getVideoTagExpandDuration()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/VideoTagView;->mVideoTagHideAnim:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_1

    new-array v0, v3, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->getTagHideInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, LOooO0OO/OooO0O0/OooO00o/o00OO0O/o0000OO0;

    invoke-direct {v4, p0}, LOooO0OO/OooO0O0/OooO00o/o00OO0O/o0000OO0;-><init>(Lcom/android/camera/ui/VideoTagView;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v4, Lcom/android/camera/ui/VideoTagView$1;

    invoke-direct {v4, p0}, Lcom/android/camera/ui/VideoTagView$1;-><init>(Lcom/android/camera/ui/VideoTagView;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v4, v3, [F

    fill-array-data v4, :array_1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->getTagHideInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v5, LOooO0OO/OooO0O0/OooO00o/o00OO0O/o000OO;

    invoke-direct {v5, p0}, LOooO0OO/OooO0O0/OooO00o/o00OO0O/o000OO;-><init>(Lcom/android/camera/ui/VideoTagView;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/android/camera/ui/VideoTagView;->mVideoTagHideAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/android/camera/ui/VideoTagView;->mVideoTagHideAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iget-object p0, p0, Lcom/android/camera/ui/VideoTagView;->mVideoTagHideAnim:Landroid/animation/AnimatorSet;

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v0, v3, v2

    aput-object v4, v3, v1

    invoke-virtual {p0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private synthetic lambda$initVideoTagAnimator$2(Landroid/animation/ValueAnimator;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "animation"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->getVideoTagPointFValue(Landroid/graphics/PointF;)F

    move-result p1

    iget v0, p0, Lcom/android/camera/ui/VideoTagView;->mVideoTagNormalSize:I

    int-to-float v1, v0

    mul-float/2addr p1, v1

    int-to-float v0, v0

    add-float/2addr p1, v0

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lcom/android/camera/ui/VideoTagView;->setTagLayoutWidth(I)V

    return-void
.end method

.method private synthetic lambda$initVideoTagAnimator$3(Landroid/animation/ValueAnimator;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "animation"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/android/camera/ui/VideoTagView;->mTagCountValue:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/ui/VideoTagView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    int-to-float v1, v1

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->getVideoTagPointFValue(Landroid/graphics/PointF;)F

    move-result p1

    iget p0, p0, Lcom/android/camera/ui/VideoTagView;->mVideoTagNormalSize:I

    int-to-float p0, p0

    mul-float/2addr p1, p0

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    return-void
.end method

.method private synthetic lambda$initVideoTagAnimator$4(Landroid/animation/ValueAnimator;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "animation"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v0, p0, Lcom/android/camera/ui/VideoTagView;->mVideoTagNormalSize:I

    int-to-float v1, v0

    mul-float/2addr p1, v1

    int-to-float v0, v0

    add-float/2addr p1, v0

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lcom/android/camera/ui/VideoTagView;->setTagLayoutWidth(I)V

    return-void
.end method

.method private synthetic lambda$initVideoTagAnimator$5(Landroid/animation/ValueAnimator;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "animation"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/camera/ui/VideoTagView;->mTagCountValue:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/ui/VideoTagView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    int-to-float v1, v1

    iget p0, p0, Lcom/android/camera/ui/VideoTagView;->mVideoTagNormalSize:I

    int-to-float p0, p0

    mul-float/2addr p1, p0

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    return-void
.end method

.method private synthetic lambda$stop$0()V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/ui/VideoTagView;->mTagFullLayout:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$updateTagValueView$1()V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/ui/VideoTagView;->mVideoTag:Landroid/view/View;

    const v0, 0x8000

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method private resetTagView()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/ui/VideoTagView;->isTagRecording:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/VideoTagView;->mTagFullLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/VideoTagView;->mTagFullLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    iget-object p0, p0, Lcom/android/camera/ui/VideoTagView;->mTagFullLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    return-void
.end method

.method private setTagLayoutWidth(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animatedValue"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/ui/VideoTagView;->mVideoTag:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object p1, p0, Lcom/android/camera/ui/VideoTagView;->mVideoTag:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean p1, p0, Lcom/android/camera/ui/VideoTagView;->isShowTagValue:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/ui/VideoTagView;->mTagCountValue:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/camera/ui/VideoTagView;->mTagCountValue:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/VideoTagView;->resetTagView()V

    :cond_1
    :goto_0
    return-void
.end method

.method private setViewMargin(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/android/camera/display/Display;->getTopBarHeight()I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {}, Lcom/android/camera/display/Display;->getTopMargin()I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {}, Lcom/android/camera/display/Display;->getMarginEnd()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0709c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateTagValueView(Landroid/widget/TextView;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoTagValue"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/camera/ui/VideoTagView;->videoTagCount:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->getAdditionalTagValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, p0, Lcom/android/camera/ui/VideoTagView;->videoTagCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/camera/ui/VideoTagView;->mVideoTag:Landroid/view/View;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/camera/ui/VideoTagView;->mVideoTag:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f120a95

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/VideoTagView;->mVideoTag:Landroid/view/View;

    new-instance v1, LOooO0OO/OooO0O0/OooO00o/o00OO0O/o0000oo;

    invoke-direct {v1, p0}, LOooO0OO/OooO0O0/OooO00o/o00OO0O/o0000oo;-><init>(Lcom/android/camera/ui/VideoTagView;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iget-object v0, p0, Lcom/android/camera/ui/VideoTagView;->mTagCountValue:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    float-to-int p1, p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/VideoTagView;->mContext:Landroid/content/Context;

    neg-int p1, p1

    iget v3, p0, Lcom/android/camera/ui/VideoTagView;->videoTagCount:I

    invoke-interface {v1, v2, v0, p1, v3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->setVideoTagCountLayout(Landroid/content/Context;Landroid/view/ViewGroup$MarginLayoutParams;II)V

    iget-object p1, p0, Lcom/android/camera/ui/VideoTagView;->mTagCountValue:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/android/camera/ui/VideoTagView;->initVideoTagAnimator()V

    iget-object p1, p0, Lcom/android/camera/ui/VideoTagView;->mVideoTagExpandAnim:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_2
    iget-object p0, p0, Lcom/android/camera/ui/VideoTagView;->mVideoTagHideAnim:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_3
    return-void
.end method

.method private updateTagView()V
    .locals 5

    invoke-direct {p0}, Lcom/android/camera/ui/VideoTagView;->resetTagView()V

    iget-object v0, p0, Lcom/android/camera/ui/VideoTagView;->mTagCountValue:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v1

    const v2, 0x7f0600fe

    invoke-virtual {v1, v2}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/camera/ui/VideoTagView;->mTagFlag:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, p0, Lcom/android/camera/ui/VideoTagView;->mTagFlag:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/customization/FlashHalo;->getHaloEnable()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object v1

    const v3, 0x7f080cac

    invoke-interface {v1, v3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->getTopConfigBgRes(I)I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/camera/ui/VideoTagView;->mVideoTag:Landroid/view/View;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v3

    const v4, 0x7f08012d

    invoke-virtual {v3, v4, v2}, Lcom/android/camera/customization/ThemeResource;->getResId(IZ)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->getTopConfigRes(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p0, p0, Lcom/android/camera/ui/VideoTagView;->mTagCountValue:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/customization/FlashHalo;->getHaloEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    :goto_1
    const/high16 v2, -0x80000000

    invoke-virtual {p0, v0, v1, v1, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/VideoTagView;->lambda$initVideoTagAnimator$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic OooO0O0(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/VideoTagView;->lambda$initVideoTagAnimator$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic OooO0OO(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/VideoTagView;->lambda$initVideoTagAnimator$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic OooO0Oo(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/VideoTagView;->lambda$initVideoTagAnimator$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic OooO0o()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/VideoTagView;->lambda$updateTagValueView$1()V

    return-void
.end method

.method public synthetic OooO0o0()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/VideoTagView;->lambda$stop$0()V

    return-void
.end method

.method public init(Landroid/view/View;Landroid/content/Context;Ljava/lang/StringBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "context",
            "tagStringBuilder"
        }
    .end annotation

    iput-object p2, p0, Lcom/android/camera/ui/VideoTagView;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/VideoTagView;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->getVideoTagSize(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/VideoTagView;->mVideoTagNormalSize:I

    const v0, 0x7f0a059b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/ui/VideoTagView;->mTagFullLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f0a059a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/VideoTagView;->mVideoTag:Landroid/view/View;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object v0

    const v1, 0x7f08012d

    invoke-interface {v0, p2, v1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->getTopConfigRes(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/android/camera/ui/VideoTagView;->mTagFullLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f0a059c

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/camera/ui/VideoTagView;->mTagCountValue:Landroid/widget/TextView;

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object p1, p0, Lcom/android/camera/ui/VideoTagView;->mTagFullLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f0a04e0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/ui/VideoTagView;->mTagFlag:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object v0

    const v1, 0x7f080cac

    invoke-interface {v0, p2, v1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->getTopConfigRes(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/android/camera/ui/VideoTagView;->mTagFlag:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object v0

    invoke-interface {v0, p2, v1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->getTopConfigBgRes(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/ui/VideoTagView;->mVideoTag:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/VideoTagView;->mTagFlag:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/ui/VideoTagView;->mTagCountValue:Landroid/widget/TextView;

    invoke-interface {p1, p2, v0, v1, v2}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->setVideoTagLayout(Landroid/content/Context;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    iget-object p1, p0, Lcom/android/camera/ui/VideoTagView;->mTagFullLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/camera/ui/VideoTagView;->mTagFullLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/VideoTagView;->setViewMargin(Landroid/view/View;)V

    iput-object p3, p0, Lcom/android/camera/ui/VideoTagView;->srtBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/ui/VideoTagView;->isShowTagValue:Z

    iget-object v0, p0, Lcom/android/camera/ui/VideoTagView;->mTagFullLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/android/camera/ui/VideoTagView;->isRecordingPause:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/ui/VideoTagView;->recordingPauseTagCount:I

    if-nez v0, :cond_0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/ui/VideoTagView;->recordingPauseTagCount:I

    iget-wide v2, p0, Lcom/android/camera/ui/VideoTagView;->mPauseRecordingTime:J

    invoke-direct {p0, v2, v3}, Lcom/android/camera/ui/VideoTagView;->getTime(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/VideoTagView;->mTagCountValue:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/VideoTagView;->updateTagValueView(Landroid/widget/TextView;)V

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/camera/ui/VideoTagView;->getTime(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget v2, p0, Lcom/android/camera/ui/VideoTagView;->videoTagCount:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/android/camera/ui/VideoTagView;->videoTagCount:I

    iget-object v2, p0, Lcom/android/camera/ui/VideoTagView;->srtBuilder:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/android/camera/ui/VideoTagView;->videoTagCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/ui/VideoTagView;->srtBuilder:Ljava/lang/StringBuilder;

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v0, p1, v1

    const-string v0, "%s\n"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/camera/ui/VideoTagView;->srtBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "video tag number: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/ui/VideoTagView;->videoTagCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoTagView"

    invoke-static {v0, p1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera/ui/VideoTagView;->mTagCountValue:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/VideoTagView;->updateTagValueView(Landroid/widget/TextView;)V

    return-void
.end method

.method public pause()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "VideoTagView"

    const-string v3, "handleTagRecordingPause: "

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/VideoTagView;->isRecordingPause:Z

    iput v0, p0, Lcom/android/camera/ui/VideoTagView;->recordingPauseTagCount:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/VideoTagView;->mPauseRecordingTime:J

    return-void
.end method

.method public prepare()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "VideoTagView"

    const-string v3, "handleTagRecordingPrepare: "

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput v0, p0, Lcom/android/camera/ui/VideoTagView;->videoTagCount:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/camera/ui/VideoTagView;->mNeedRemoveTime:J

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/VideoTagView;->isShowTagValue:Z

    iput-boolean v0, p0, Lcom/android/camera/ui/VideoTagView;->isRecordingPause:Z

    iput-boolean v1, p0, Lcom/android/camera/ui/VideoTagView;->isTagRecording:Z

    invoke-direct {p0}, Lcom/android/camera/ui/VideoTagView;->updateTagView()V

    iget-object v1, p0, Lcom/android/camera/ui/VideoTagView;->srtBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/VideoTagView;->srtBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/VideoTagView;->mVideoTag:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120a95

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public resume()V
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "VideoTagView"

    const-string v3, "handleTagRecordingResume: "

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v0, p0, Lcom/android/camera/ui/VideoTagView;->isRecordingPause:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/ui/VideoTagView;->mNeedRemoveTime:J

    iget-wide v4, p0, Lcom/android/camera/ui/VideoTagView;->mPauseRecordingTime:J

    sub-long/2addr v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/camera/ui/VideoTagView;->mNeedRemoveTime:J

    return-void
.end method

.method public start()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VideoTagView"

    const-string v2, "handleTagRecordingStart: "

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/VideoTagView;->mStartRecordingTime:J

    return-void
.end method

.method public stop()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "VideoTagView"

    const-string v3, "handleTagRecordingStop: "

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v0, p0, Lcom/android/camera/ui/VideoTagView;->isRecordingPause:Z

    iput v0, p0, Lcom/android/camera/ui/VideoTagView;->videoTagCount:I

    iput-boolean v0, p0, Lcom/android/camera/ui/VideoTagView;->isTagRecording:Z

    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/Scheduler;

    new-instance v1, LOooO0OO/OooO0O0/OooO00o/o00OO0O/o0000O0;

    invoke-direct {v1, p0}, LOooO0OO/OooO0O0/OooO00o/o00OO0O/o0000O0;-><init>(Lcom/android/camera/ui/VideoTagView;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
