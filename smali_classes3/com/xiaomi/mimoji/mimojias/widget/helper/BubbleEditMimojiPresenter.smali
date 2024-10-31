.class public Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter$BubblePop;
    }
.end annotation


# static fields
.field private static final INVISIBLE_STATE:I = -0x1

.field public static final RESET_STATE:I = -0x2

.field private static final TAG:Ljava/lang/String; = "BubbleEditMimojiPresenter"

.field private static final VISIBLE_STATE:I = 0x1


# instance fields
.field private bubblePop:Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter$BubblePop;

.field private downMove:I

.field private isAnimationingDele:Z

.field private isAnimationingEdit:Z

.field private isAnimationingEmoticon:Z

.field private leftMove:D

.field private mContext:Landroid/content/Context;

.field private mHashCodeBubble:I

.field private mIsRTL:Z

.field private mScreenWidth:I

.field public mShowBubbleState:[I

.field private rightMove:D

.field private topMove:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/widget/RelativeLayout;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "listener",
            "container",
            "screenWidth"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter;->isAnimationingEmoticon:Z

    iput-boolean v0, p0, Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter;->isAnimationingDele:Z

    iput-boolean v0, p0, Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter;->isAnimationingEdit:Z

    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter;->mShowBubbleState:[I

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter;->mHashCodeBubble:I

    iput-object p1, p0, Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter;->mIsRTL:Z

    iput p4, p0, Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter;->mScreenWidth:I

    new-instance p1, Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter$BubblePop;

    iget-object p4, p0, Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, p4, p2, p3}, Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter$BubblePop;-><init>(Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter;Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/widget/RelativeLayout;)V

    iput-object p1, p0, Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter;->bubblePop:Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter$BubblePop;

    return-void
.end method

.method public static synthetic access$000(Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter;->isAnimationingEdit:Z

    return p0
.end method

.method public static synthetic access$002(Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter;->isAnimationingEdit:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter;->isAnimationingDele:Z

    return p0
.end method

.method public static synthetic access$1002(Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter;->isAnimationingEmoticon:Z

    return p1
.end method

.method public static synthetic access$102(Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter;->isAnimationingDele:Z

    return p1
.end method

.method public static synthetic access$1100(Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter;->downMove:I

    return p0
.end method

.method public static synthetic access$200(Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter;->mScreenWidth:I

    return p0
.end method

.method public static synthetic access$300(Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter;->mIsRTL:Z

    return p0
.end method

.method public static synthetic access$400(Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter;)D
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter;->rightMove:D

    return-wide v0
.end method

.method public static synthetic access$500(Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter;)D
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter;->leftMove:D

    return-wide v0
.end method

.method public static synthetic access$600(Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter;->topMove:I

    return p0
.end method


# virtual methods
.method public getBubblePop()Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter$BubblePop;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter;->bubblePop:Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter$BubblePop;

    return-object p0
.end method

.method public processBubbleAni(II)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "targetLeftCoordinate",
            "targetTopCoordinate"
        }
    .end annotation

    const/4 v0, -0x2

    if-ne v0, p1, :cond_1

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter;->bubblePop:Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter$BubblePop;

    invoke-virtual {v0}, Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter$BubblePop;->getProcessState()I

    move-result v0

    const/16 v1, 0x67

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter;->bubblePop:Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter$BubblePop;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter$BubblePop;->processBubbleAni(III)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-double v1, v0

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v1, v3

    iput-wide v1, p0, Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter;->rightMove:D

    neg-double v1, v1

    iput-wide v1, p0, Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter;->leftMove:D

    neg-int v1, v0

    iput v1, p0, Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter;->topMove:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter;->downMove:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calculate vector leftMove:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter;->leftMove:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " rightMove:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter;->rightMove:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "  topMove:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter;->topMove:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  downMove:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter;->downMove:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "BubbleEditMimojiPresenter"

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter;->bubblePop:Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter$BubblePop;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter$BubblePop;->processBubbleAni(III)V

    return-void
.end method

.method public setmHashCodeBubble(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mHashCodeBubble"
        }
    .end annotation

    iput p1, p0, Lcom/xiaomi/mimoji/mimojias/widget/helper/BubbleEditMimojiPresenter;->mHashCodeBubble:I

    return-void
.end method
