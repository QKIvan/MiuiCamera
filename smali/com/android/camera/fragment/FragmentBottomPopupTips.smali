.class public Lcom/android/camera/fragment/FragmentBottomPopupTips;
.super Lcom/android/camera/fragment/BaseFragment;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/protocols/BottomPopupTips;
.implements Lcom/android/camera/protocol/protocols/HandleBackTrace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;
    }
.end annotation


# static fields
.field public static final FRAGMENT_INFO:I = 0xfff9

.field private static final I_AI_TIP_DELAY_HIDE_MS:I = 0xbb8

.field private static final MSG_HIDE_AI_TIP:I = 0x2

.field private static final MSG_HIDE_QR_TIP:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FragmentBottomPopupTips"

.field private static final TIP_DOC_MODE:I = 0x5

.field private static final TIP_ID_CARD:I = 0x4

.field private static final TIP_NEAR_RANGE:I = 0x8

.field private static final TIP_OCR_ENTRY:I = 0x7

.field private static final TIP_QR_ENTRY:I = 0x6


# instance fields
.field private final mBackgroundUpdater:Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;

.field private mCenterTipImage:Landroid/widget/ImageView;

.field private mCustomDisposable:Lio/reactivex/disposables/Disposable;

.field public mCustomRoot:Landroid/widget/FrameLayout;

.field public mImageTipHandler:Landroid/os/Handler;

.field private mIsShowLyingDirectHint:Z

.field private mLastNightTag:I

.field private mLeftDynamicImage:Landroid/widget/ImageView;

.field private mLeftTipExtraImage:Landroid/widget/ImageView;

.field private mLeftTipImage:Landroid/widget/ImageView;

.field private mLyingDirectHint:Landroid/widget/TextView;

.field private mNightCaptureExpTime:I

.field private mNormalDisposable:Lio/reactivex/disposables/Disposable;

.field private mNormalViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public mOnclickListener:Landroid/view/View$OnClickListener;

.field private mPopupTipLabel:Ljava/lang/Integer;

.field private mPopupTipResult:Ljava/lang/Object;

.field private mRightDynamicImage:Landroid/widget/ImageView;

.field private mRightTipExtraImage:Landroid/widget/ImageView;

.field private mRightTipImage:Landroid/widget/ImageView;

.field private mRootView:Landroid/view/View;

.field private mTipImageRoot:Landroid/widget/FrameLayout;

.field public mTipState:Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;

.field private mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNormalViews:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNightCaptureExpTime:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastNightTag:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPopupTipLabel:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPopupTipResult:Ljava/lang/Object;

    new-instance v0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;)V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mImageTipHandler:Landroid/os/Handler;

    sget-object v0, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/o0OO0oO0;->o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00O0OoO/o0OO0oO0;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mOnclickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;)V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipState:Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;

    new-instance v0, Lcom/android/camera/fragment/FragmentBottomPopupTips$6;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips$6;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;)V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBackgroundUpdater:Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;

    return-void
.end method

.method public static synthetic OooO0OO(Lcom/android/camera/fragment/FragmentBottomPopupTips;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showIdCard(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic OooO0Oo(Lcom/android/camera/fragment/FragmentBottomPopupTips;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showDoc(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic OooO0o0(Lcom/android/camera/fragment/FragmentBottomPopupTips;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showOCRContent(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic OooOO0O(Lcom/android/camera/fragment/FragmentBottomPopupTips;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showQrCode(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$002(Lcom/android/camera/fragment/FragmentBottomPopupTips;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCustomDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/FragmentBottomPopupTips;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImageRoot:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/camera/fragment/FragmentBottomPopupTips;Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->applyCustomItem(Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;)V

    return-void
.end method

.method public static synthetic access$302(Lcom/android/camera/fragment/FragmentBottomPopupTips;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNormalDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method public static synthetic access$400(Lcom/android/camera/fragment/FragmentBottomPopupTips;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/camera/fragment/FragmentBottomPopupTips;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPopupTipLabel:Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic access$502(Lcom/android/camera/fragment/FragmentBottomPopupTips;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPopupTipLabel:Ljava/lang/Integer;

    return-object p1
.end method

.method public static synthetic access$600(Lcom/android/camera/fragment/FragmentBottomPopupTips;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateDynamicImage()V

    return-void
.end method

.method private applyCustomItem(Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;->getCustomView()I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCustomRoot:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCustomRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->isSupportRotation()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    add-int/lit16 v2, v1, 0x168

    rem-int/lit16 v2, v2, 0x168

    const/16 v4, 0xb4

    if-ne v2, v4, :cond_1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;->setDegree(I)V

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v3, v2, :cond_1

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v4, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setRotation(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->getDesc()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->getDesc()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;->getUpdateListener()Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;->getUpdateListener()Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;->onUpdate(Landroid/view/View;)V

    :cond_3
    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/o0o0000;

    invoke-direct {v1, p0, p1}, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/o0o0000;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    new-instance p0, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;

    invoke-direct {p0, v0}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_5
    :goto_1
    return-void
.end method

.method private cancelUpdateTipImage()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNormalDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNormalDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCustomDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCustomDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {p0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_1
    return-void
.end method

.method private checkCusRotate(Ljava/util/List;Landroid/widget/FrameLayout;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pendingRotateItems",
            "customRoot",
            "degree"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/widget/FrameLayout;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->isSupportRotation()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p3}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;->setDegree(I)V

    const v3, 0x7f0a0509

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0a050a

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->isActivated()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLandScape()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    int-to-float v2, p3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setRotation(F)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private varargs checkRotate(Ljava/util/List;[Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pendingRotateItems",
            "views"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;[",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    array-length p0, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    aget-object v1, p2, v0

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;

    invoke-virtual {v2}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->isSupportRotation()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private varargs checkViews([Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "views"
        }
    .end annotation

    array-length p0, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    aget-object v1, p1, v0

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private varargs clearAllTag([Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "views"
        }
    .end annotation

    array-length p0, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    aget-object v1, p1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getTipBottomMargin(I)I
    .locals 6
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tipHeight"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/protocol/protocols/DualController;->impl2()Lcom/android/camera/protocol/protocols/DualController;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070112

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v3

    const v4, 0x7f0704a2

    if-eqz v3, :cond_3

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isUltraWideConfigOpen(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v0

    invoke-virtual {v0}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0oO()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    div-int/lit8 p1, p1, 0x2

    :goto_0
    sub-int/2addr p0, p1

    goto/16 :goto_2

    :cond_2
    invoke-static {}, Lcom/android/camera/display/Display;->getSquareBottomCoverHeight()I

    move-result p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0708fc

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr p0, p1

    goto/16 :goto_2

    :cond_3
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    const v5, 0x7f070113

    if-nez v3, :cond_5

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_1
    add-int/2addr p0, v2

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p0

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/DualController;->isButtonVisible()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/DualController;->visibleHeight()I

    move-result p0

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/android/camera/protocol/protocols/MakeupProtocol;->impl2()Lcom/android/camera/protocol/protocols/MakeupProtocol;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/protocol/protocols/LightingProtocol;->impl2()Lcom/android/camera/protocol/protocols/LightingProtocol;

    move-result-object v3

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/MakeupProtocol;->isSeekBarVisible()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070154

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr p0, p1

    goto :goto_2

    :cond_7
    if-eqz v1, :cond_8

    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_1

    :cond_8
    if-eqz v3, :cond_9

    invoke-interface {v3}, Lcom/android/camera/protocol/protocols/LightingProtocol;->isShowLightingView()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_1

    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    div-int/lit8 p1, p1, 0x2

    goto/16 :goto_0

    :goto_2
    return p0
.end method

.method private hideZoomTipImage(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentMode"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/protocol/protocols/DualController;->impl2()Lcom/android/camera/protocol/protocols/DualController;

    move-result-object p0

    const/16 v0, 0xa9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xad

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb7

    if-eq p1, v0, :cond_1

    const/16 v0, 0xbc

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/DualController;->hideZoomButton()V

    goto :goto_0

    :cond_1
    :pswitch_0
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p1

    invoke-virtual {p1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0oO()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    :pswitch_1
    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/DualController;->hideZoomButton()V

    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    if-eqz p0, :cond_3

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-interface {p0, v0, v0, p1}, Lcom/android/camera/protocol/protocols/TopAlert;->alertUpdateValue(IILjava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private synthetic lambda$applyCustomItem$4(Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "item",
            "v"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->checkClick()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "click customItem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->getKey()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentBottomPopupTips"

    invoke-static {v1, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->isHideBySelf()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->onTipImageClick()V

    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$applyItem$5(Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "view"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x80

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$applyItem$6(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "item",
            "v"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->checkClick()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "click item: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->getKey()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentBottomPopupTips"

    invoke-static {v1, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->isHideBySelf()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->onTipImageClick()V

    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$hideAllTipImage$2()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCustomRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCustomRoot:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public static synthetic lambda$hideAllTipImage$3(Lcom/android/camera/protocol/VideoPrompterProtocol;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "p"
        }
    .end annotation

    sget-object v0, Lcom/android/camera/fragment/videoprompter/TipLocationManager$TipType;->BOTTOM_POPUP_TIP:Lcom/android/camera/fragment/videoprompter/TipLocationManager$TipType;

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/VideoPrompterProtocol;->onTipRemoved(Lcom/android/camera/fragment/videoprompter/TipLocationManager$TipType;)V

    return-void
.end method

.method public static synthetic lambda$new$7(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0xa7

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->onConfigChanged(I)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$null$8(Landroid/widget/ImageView;Lcom/android/camera/protocol/protocols/ocr/OCRProtocol;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "view",
            "ocrProtocol"
        }
    .end annotation

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->isDynamicTipVisible(I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p2, p1}, Lcom/android/camera/protocol/protocols/ocr/OCRProtocol;->showFirstUseBubble(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$toggleOCRTip$9(Landroid/widget/ImageView;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "view"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/protocol/protocols/ocr/OCRProtocol;->impl()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO00000;

    invoke-direct {v1, p0, p1}, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO00000;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic lambda$updateTipImage$0(Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "item"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->getKey()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$updateTipImage$1(Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "item"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->getKey()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private reIntTipViewMarginBottom(Landroid/view/View;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "tipHeight"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->getTipBottomMargin(I)I

    move-result p0

    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq p2, p0, :cond_0

    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private showAIDocTip()V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportDocumentMode"
        type = 0x0
    .end annotation

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->isDynamicTipVisible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPopupTipLabel:Ljava/lang/Integer;

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateDynamicImage()V

    return-void
.end method

.method private showDoc(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->getActiveModuleIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->setEntranceMode(I)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->provideTransientZoomRatio(F)V

    invoke-static {}, Lcom/android/camera/protocol/protocols/ModeChangeController;->impl2()Lcom/android/camera/protocol/protocols/ModeChangeController;

    move-result-object p1

    if-eqz p1, :cond_1

    const/16 v0, 0xba

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f120114

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {p1, v0, p0, v1}, Lcom/android/camera/protocol/protocols/ModeChangeController;->changeModeByNewMode(ILjava/lang/String;I)V

    :cond_1
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackAiTipDoc()V

    return-void
.end method

.method private showIDCardTip()V
    .locals 2

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->isDynamicTipVisible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPopupTipLabel:Ljava/lang/Integer;

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateDynamicImage()V

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p0

    invoke-virtual {p0}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0O0000O()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isOCREnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/xiaomi/ocr/sdk_ocr/OCREngineWrapper;->getInstance()Lcom/xiaomi/ocr/sdk_ocr/OCREngineWrapper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/xiaomi/ocr/sdk_ocr/OCREngineWrapper;->suppressRegionDetection(I)V

    :cond_1
    return-void
.end method

.method private showIdCard(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 p1, 0xa6

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->onConfigChanged(I)V

    :cond_0
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackAiTipCard()V

    return-void
.end method

.method private showOCRContent(Landroid/view/View;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportOCR"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/protocol/protocols/ocr/OCRProtocol;->impl()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO00o00;->o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO00o00;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const-string/jumbo p0, "ocr_recognition"

    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackOCRCommon(Ljava/lang/String;)V

    return-void
.end method

.method private showQrCode(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/protocol/protocols/CameraModuleSpecial;->impl2()Lcom/android/camera/protocol/protocols/CameraModuleSpecial;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/protocols/CameraModuleSpecial;->showQRCodeResult(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackAiTipQrCode()V

    return-void
.end method

.method private updateCustomBg()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCustomRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCustomRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;

    invoke-virtual {v2}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;->getUpdateListener()Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;->getUpdateListener()Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;->onUpdate(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateDynamicImage()V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateDynamicImage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPopupTipLabel:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "FragmentBottomPopupTips"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPopupTipLabel:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightDynamicImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightDynamicImage:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x4

    const-wide/16 v4, 0xbb8

    const-wide/16 v6, -0x1

    const/4 v8, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x5

    if-eq v0, v3, :cond_3

    const/4 v3, 0x6

    const/4 v4, 0x1

    if-eq v0, v3, :cond_2

    const/4 v3, 0x7

    if-eq v0, v3, :cond_1

    goto/16 :goto_0

    :cond_1
    new-instance v0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    const/16 v2, 0x23

    invoke-direct {v0, v2}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;-><init>(I)V

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTips()Lcom/android/camera2/compat/theme/common/MiThemeOperationTipsInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTipsInterface;->getOCRTipIcon()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setRes(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    const v2, 0x7f120054

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setDesc(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBackgroundUpdater:Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setBgUpdater(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setSupportRotation(Z)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    invoke-virtual {v0, v4}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setHideSelf(Z)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    invoke-virtual {v0, v6, v7}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->setDuration(J)Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->setPriority(I)Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->setGravity(I)Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    move-result-object v0

    new-instance v1, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/o0OOo000;

    invoke-direct {v1, p0}, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/o0OOo000;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    goto/16 :goto_0

    :cond_2
    new-instance v0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    const/16 v1, 0x22

    invoke-direct {v0, v1}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;-><init>(I)V

    const v1, 0x7f0806a5

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setRes(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    const v1, 0x7f120960

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setDesc(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPopupTipResult:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setData(Ljava/lang/Object;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBackgroundUpdater:Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setBgUpdater(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    const-wide/16 v1, 0x3a98

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->setDelayHide(J)Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setHideSelf(Z)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->setDuration(J)Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->setPriority(I)Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->setGravity(I)Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    move-result-object v0

    new-instance v1, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/o;

    invoke-direct {v1, p0}, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/o;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    goto/16 :goto_0

    :cond_3
    new-instance v0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    const/16 v2, 0x20

    invoke-direct {v0, v2}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;-><init>(I)V

    const v2, 0x7f0802a8

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setRes(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    const v2, 0x7f120114

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setDesc(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBackgroundUpdater:Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setBgUpdater(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    invoke-virtual {v0, v4, v5}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->setDelayHide(J)Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->setDuration(J)Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->setGravity(I)Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->setPriority(I)Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    move-result-object v0

    new-instance v1, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/o0OOOO0o;

    invoke-direct {v1, p0}, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/o0OOOO0o;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    const/16 v2, 0x21

    invoke-direct {v0, v2}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;-><init>(I)V

    const v2, 0x7f080841

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setRes(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    const v2, 0x7f12011c

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setDesc(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBackgroundUpdater:Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setBgUpdater(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    invoke-virtual {v0, v4, v5}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->setDelayHide(J)Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->setDuration(J)Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->setGravity(I)Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->setPriority(I)Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    move-result-object v0

    new-instance v1, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/o0OO;

    invoke-direct {v1, p0}, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/o0OO;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    :goto_0
    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateDynamicImageLayoutParams()V

    invoke-virtual {v2}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->build()Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImageRoot:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->applyItem(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public synthetic OooO()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->lambda$hideAllTipImage$2()V

    return-void
.end method

.method public synthetic OooO0o(Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->lambda$applyCustomItem$4(Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;Landroid/view/View;)V

    return-void
.end method

.method public synthetic OooO0oO(Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->lambda$applyItem$5(Landroid/widget/ImageView;)V

    return-void
.end method

.method public synthetic OooO0oo(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->lambda$applyItem$6(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;Landroid/view/View;)V

    return-void
.end method

.method public synthetic OooOO0(Landroid/widget/ImageView;Lcom/android/camera/protocol/protocols/ocr/OCRProtocol;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->lambda$null$8(Landroid/widget/ImageView;Lcom/android/camera/protocol/protocols/ocr/OCRProtocol;)V

    return-void
.end method

.method public synthetic OooOO0o(Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->lambda$toggleOCRTip$9(Landroid/widget/ImageView;)V

    return-void
.end method

.method public applyItem(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;)V
    .locals 5
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "!isSupportThemeCV"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "FragmentBottomPopupTips"

    const-string v0, "current fragment is not isAdded"

    invoke-static {p1, v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->getPanelEntranceView(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;)Landroid/widget/ImageView;

    move-result-object v0

    instance-of v2, v0, Lcom/android/camera/ui/ColorImageView;

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    :goto_0
    invoke-virtual {v2, v3}, Lcom/android/camera/ui/ColorImageView;->setColorAndRefresh(I)V

    :cond_2
    if-nez v0, :cond_3

    return-void

    :cond_3
    instance-of v2, p1, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO0Oo;

    invoke-direct {v2, p0, v0}, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO0Oo;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;Landroid/widget/ImageView;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->getRes()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->getRes()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->getDesc()I

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->getDesc()I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_6
    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->getBgUpdater()Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->getBgUpdater()Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;->updateBg()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->getBgUpdater()Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;->updateBgResourceColor()I

    move-result v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/camera/customization/ThemeResource;->setBackgroundColor(Landroid/view/View;II)V

    :cond_7
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->isSupportRotation()Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_1

    :cond_8
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setRotation(F)V

    :goto_1
    instance-of v2, p1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem;

    const/4 v3, 0x0

    if-eqz v2, :cond_9

    move-object v2, p1

    check-cast v2, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem;

    invoke-virtual {v2}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem;->getOnGestureListener()Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$OnGestureListener;

    move-result-object v2

    goto :goto_2

    :cond_9
    move-object v2, v3

    :goto_2
    instance-of v4, v0, Lcom/android/camera/ui/ColorImageView;

    if-eqz v4, :cond_b

    if-eqz v2, :cond_a

    new-instance v3, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    new-instance v4, Lcom/android/camera/fragment/FragmentBottomPopupTips$4;

    invoke-direct {v4, p0, p1, v2}, Lcom/android/camera/fragment/FragmentBottomPopupTips$4;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$OnGestureListener;)V

    goto :goto_3

    :cond_a
    move-object v4, v3

    :goto_3
    move-object v2, v0

    check-cast v2, Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ui/ColorImageView;->setGestureDetector(Landroid/view/GestureDetector;Lcom/android/camera/ui/ColorImageView$GestureCallback;)V

    :cond_b
    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    if-eqz v2, :cond_c

    new-instance v2, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/o0OOO0;

    invoke-direct {v2, p0, p1}, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/o0OOO0;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    const/4 p0, 0x1

    new-array p0, p0, [Landroid/view/View;

    aput-object v0, p0, v1

    invoke-static {p0}, Lcom/android/camera/animation/FolmeUtils;->touchScaleTint([Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_d

    new-instance p0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    invoke-direct {p0, v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_d
    return-void
.end method

.method public changeViewAccessibility(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImageRoot:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    :cond_1
    return-void
.end method

.method public checkClick()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/camera/protocol/protocols/utils/RunningStateUtil;->isDoingAction()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public configRootLayoutParams(Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "animateInElements",
            "animation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mValueAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "FragmentBottomPopupTips"

    const-string p2, "configRootLayoutParams, mRootView is null."

    invoke-static {p1, p2, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getPaintCondition()Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/zoom/HybridZoomingSystem;->getSupportedOpticalZoomRatios(I)[F

    const v0, 0x7fffffff

    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplay16_10()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/display/Display;->getTopBarWidth(Landroid/content/Context;)I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/camera/display/Display;->getCenterDisplayWidth()I

    move-result v1

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/android/camera/display/Display;->getPopuMenuBottomMargin()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/4 v2, 0x1

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v2, v0, :cond_3

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_3
    if-nez p2, :cond_4

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_4
    if-le v0, v2, :cond_5

    if-eqz p1, :cond_5

    return-void

    :cond_5
    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x12c

    invoke-virtual {p2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v3}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/camera/fragment/FragmentBottomPopupTips$5;

    invoke-direct {v3, p0, v2, v0, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips$5;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;IILandroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {p2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p1, :cond_6

    new-instance p2, Lcom/android/camera/animation/CommonAnimatorOnSubScribe;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p2, p0}, Lcom/android/camera/animation/CommonAnimatorOnSubScribe;-><init>(Landroid/animation/Animator;)V

    invoke-static {p2}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public directHideLyingDirectHint()V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLyingDirectHint:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public getFragmentInto()I
    .locals 0

    const p0, 0xfff9

    return p0
.end method

.method public getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d006c

    return p0
.end method

.method public getPanelEntranceView(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;)Landroid/widget/ImageView;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    instance-of v0, p1, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;

    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;->getGravity()I

    move-result p1

    if-ne p1, v1, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftDynamicImage:Landroid/widget/ImageView;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightDynamicImage:Landroid/widget/ImageView;

    return-object p0

    :cond_1
    instance-of v0, p1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem;

    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem;->getGravity()I

    move-result p1

    if-eqz p1, :cond_6

    if-eq p1, v1, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipExtraImage:Landroid/widget/ImageView;

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid gravity : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipImage:Landroid/widget/ImageView;

    return-object p0

    :cond_4
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipExtraImage:Landroid/widget/ImageView;

    return-object p0

    :cond_5
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    return-object p0

    :cond_6
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid item : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hideAiTips()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipState:Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;->deactivateTip()V

    return-void
.end method

.method public hideAllTipImage(Z)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "anim"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->cancelUpdateTipImage()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPopupTipLabel:Ljava/lang/Integer;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x7

    new-array v1, v0, [Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightDynamicImage:Landroid/widget/ImageView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftDynamicImage:Landroid/widget/ImageView;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipExtraImage:Landroid/widget/ImageView;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipImage:Landroid/widget/ImageView;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipExtraImage:Landroid/widget/ImageView;

    const/4 v9, 0x6

    aput-object v2, v1, v9

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->clearAllTag([Landroid/view/View;)V

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    new-instance p1, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImageRoot:Landroid/widget/FrameLayout;

    invoke-direct {p1, v2}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    new-instance v2, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/o0OOOO00;

    invoke-direct {v2, p0}, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/o0OOOO00;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;)V

    invoke-virtual {p1, v2}, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;->setOnAnimationEnd(Ljava/lang/Runnable;)Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImageRoot:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCustomRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCustomRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    new-array p1, v1, [Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCustomRoot:Landroid/widget/FrameLayout;

    aput-object v1, p1, v3

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightDynamicImage:Landroid/widget/ImageView;

    aput-object v1, p1, v4

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftDynamicImage:Landroid/widget/ImageView;

    aput-object v1, p1, v5

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    aput-object v1, p1, v6

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    aput-object v1, p1, v7

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipExtraImage:Landroid/widget/ImageView;

    aput-object v1, p1, v8

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipImage:Landroid/widget/ImageView;

    aput-object v1, p1, v9

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipExtraImage:Landroid/widget/ImageView;

    aput-object v1, p1, v0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->checkViews([Landroid/view/View;)V

    invoke-static {}, Lcom/android/camera/protocol/VideoPrompterProtocol;->impl()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/o0OOO00;->o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00O0OoO/o0OOO00;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public hideAllTips(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "anim"
        }
    .end annotation

    const/4 p1, 0x4

    iput p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastNightTag:I

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideQrCodeTip()V

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->directHideLyingDirectHint()V

    return-void
.end method

.method public hideNoDynamicTips()V
    .locals 8

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->cancelUpdateTipImage()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPopupTipLabel:Ljava/lang/Integer;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x5

    new-array v1, v0, [Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipExtraImage:Landroid/widget/ImageView;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipImage:Landroid/widget/ImageView;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipExtraImage:Landroid/widget/ImageView;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->clearAllTag([Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightDynamicImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImageRoot:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    :cond_1
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCustomRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCustomRoot:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v1, 0x6

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCustomRoot:Landroid/widget/FrameLayout;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipExtraImage:Landroid/widget/ImageView;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipImage:Landroid/widget/ImageView;

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipExtraImage:Landroid/widget/ImageView;

    aput-object v2, v1, v0

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->checkViews([Landroid/view/View;)V

    iput v7, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastNightTag:I

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->directHideLyingDirectHint()V

    return-void
.end method

.method public hideQrCodeTip()V
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->isDynamicTipVisible(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPopupTipLabel:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPopupTipResult:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateDynamicImage()V

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p0

    invoke-virtual {p0}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0O0000O()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isOCREnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/xiaomi/ocr/sdk_ocr/OCREngineWrapper;->getInstance()Lcom/xiaomi/ocr/sdk_ocr/OCREngineWrapper;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/xiaomi/ocr/sdk_ocr/OCREngineWrapper;->releaseRegionDetection(I)V

    :cond_1
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    const v0, 0x7f0a03d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImageRoot:Landroid/widget/FrameLayout;

    const v0, 0x7f0a03ff

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    const v0, 0x7f0a0402

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    const v0, 0x7f0a0401

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipExtraImage:Landroid/widget/ImageView;

    const v0, 0x7f0a0406

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipImage:Landroid/widget/ImageView;

    const v0, 0x7f0a0405

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipExtraImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNormalViews:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNormalViews:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNormalViews:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipExtraImage:Landroid/widget/ImageView;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNormalViews:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipImage:Landroid/widget/ImageView;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNormalViews:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipExtraImage:Landroid/widget/ImageView;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f0a01b7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightDynamicImage:Landroid/widget/ImageView;

    const v0, 0x7f0a01b6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftDynamicImage:Landroid/widget/ImageView;

    const v0, 0x7f0a014f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCustomRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    return-void
.end method

.method public isDynamicTipVisible(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tip"
        }
    .end annotation

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/16 p1, 0x23

    goto :goto_0

    :cond_1
    const/16 p1, 0x22

    goto :goto_0

    :cond_2
    const/16 p1, 0x20

    goto :goto_0

    :cond_3
    const/16 p1, 0x21

    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightDynamicImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightDynamicImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;

    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->getKey()I

    move-result p0

    if-ne p0, p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public isNormalTagShowing(I)Z
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCustomRoot:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCustomRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCustomRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCustomRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;

    invoke-virtual {v2}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->getKey()I

    move-result v2

    if-ne v2, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return v1
.end method

.method public needViewClear()Z
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    const/16 v1, 0xa2

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->needViewClear()Z

    move-result p0

    return p0
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arrivedType"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->configRootLayoutParams(Ljava/util/List;Z)V

    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dataChangeType",
            "currentMode"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->isDummySystemEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p2, 0xd1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateTipImage()V

    const/4 p1, 0x7

    new-array p1, p1, [Landroid/view/View;

    const/4 p2, 0x0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightDynamicImage:Landroid/widget/ImageView;

    aput-object v0, p1, p2

    const/4 p2, 0x1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftDynamicImage:Landroid/widget/ImageView;

    aput-object v0, p1, p2

    const/4 p2, 0x2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    aput-object v0, p1, p2

    const/4 p2, 0x3

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    aput-object v0, p1, p2

    const/4 p2, 0x4

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipExtraImage:Landroid/widget/ImageView;

    aput-object v0, p1, p2

    const/4 p2, 0x5

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipImage:Landroid/widget/ImageView;

    aput-object v0, p1, p2

    const/4 p2, 0x6

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipExtraImage:Landroid/widget/ImageView;

    aput-object v0, p1, p2

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateBg([Landroid/view/View;)V

    return-void
.end method

.method public notifyThemeChanged(ILjava/util/List;I)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportFlashScreenHalo"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "newMode",
            "animateInElements",
            "themeChangeType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    const/4 p1, 0x7

    new-array p1, p1, [Landroid/view/View;

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightDynamicImage:Landroid/widget/ImageView;

    const/4 p3, 0x0

    aput-object p2, p1, p3

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftDynamicImage:Landroid/widget/ImageView;

    const/4 p3, 0x1

    aput-object p2, p1, p3

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    const/4 p3, 0x2

    aput-object p2, p1, p3

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    const/4 p3, 0x3

    aput-object p2, p1, p3

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipExtraImage:Landroid/widget/ImageView;

    const/4 p3, 0x4

    aput-object p2, p1, p3

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipImage:Landroid/widget/ImageView;

    const/4 p3, 0x5

    aput-object p2, p1, p3

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipExtraImage:Landroid/widget/ImageView;

    const/4 p3, 0x6

    aput-object p2, p1, p3

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateBg([Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateCustomBg()V

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callingFrom"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBackEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "FragmentBottomPopupTips"

    invoke-static {v4, v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    const/4 v3, 0x4

    if-eq p1, v3, :cond_0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateLeftDynamicImage(IZLjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideAllTips(Z)V

    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideAllTipImage(Z)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateLeftDynamicImage(IZLjava/lang/Object;)V

    :cond_1
    :goto_0
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/utils/RunningStateUtil;->isDoingAction()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "FragmentBottomPopupTips"

    const-string/jumbo v0, "onCreate: "

    invoke-static {p1, v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onStop()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideAllTips(Z)V

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->cancelUpdateTipImage()V

    return-void
.end method

.method public onTipImageClick()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideAllTips(Z)V

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideZoomTipImage(I)V

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideAllTipImage(Z)V

    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "newMode",
            "animateInElements",
            "resetType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->isDummySystemEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0xd1

    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-virtual {p0, p2, v3}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->configRootLayoutParams(Ljava/util/List;Z)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isInModeChanging()Z

    move-result p2

    const/4 v3, 0x4

    if-nez p2, :cond_2

    if-ne p3, v3, :cond_3

    :cond_2
    iput-boolean v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mIsShowLyingDirectHint:Z

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->directHideLyingDirectHint()V

    :cond_3
    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p2}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideQrCodeTip()V

    :cond_4
    const/4 p2, 0x5

    if-ne v0, p1, :cond_5

    move p1, p2

    goto :goto_1

    :cond_5
    move p1, v3

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->onBackEvent(I)Z

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateTipImage()V

    const/4 p1, 0x7

    new-array p1, p1, [Landroid/view/View;

    iget-object p3, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightDynamicImage:Landroid/widget/ImageView;

    aput-object p3, p1, v2

    iget-object p3, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftDynamicImage:Landroid/widget/ImageView;

    aput-object p3, p1, v1

    const/4 p3, 0x2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    aput-object v0, p1, p3

    const/4 p3, 0x3

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    aput-object v0, p1, p3

    iget-object p3, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipExtraImage:Landroid/widget/ImageView;

    aput-object p3, p1, v3

    iget-object p3, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipImage:Landroid/widget/ImageView;

    aput-object p3, p1, p2

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipExtraImage:Landroid/widget/ImageView;

    const/4 p3, 0x6

    aput-object p2, p1, p3

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateBg([Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->reConfigAiTip()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0, p3}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->isDynamicTipVisible(I)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideAiTips()V

    :cond_6
    return-void
.end method

.method public provideEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lastFragmentInfo"
        }
    .end annotation

    const/16 v0, 0xf0

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->getFragmentInto()I

    move-result p0

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    new-array p0, p0, [I

    const/4 p1, 0x0

    const/16 v0, 0xa1

    aput v0, p0, p1

    invoke-static {p0}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pendingRotateItems",
            "degree"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideRotateItem(Ljava/util/List;I)V

    const/4 v0, 0x7

    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipExtraImage:Landroid/widget/ImageView;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipImage:Landroid/widget/ImageView;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipExtraImage:Landroid/widget/ImageView;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightDynamicImage:Landroid/widget/ImageView;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftDynamicImage:Landroid/widget/ImageView;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->checkRotate(Ljava/util/List;[Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCustomRoot:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->checkCusRotate(Ljava/util/List;Landroid/widget/FrameLayout;I)V

    return-void
.end method

.method public reConfigAiTip()Z
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    instance-of v2, v0, Lcom/android/camera/module/Camera2Module;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    iget-object v0, v0, Lcom/android/camera/module/Camera2Module;->mAiSceneMgr:Lcom/android/camera/module/image/AiSceneManager;

    invoke-virtual {v0}, Lcom/android/camera/module/image/AiSceneManager;->getCurrentAiScene()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restoreAiState: maybe restore ai scene tip:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "FragmentBottomPopupTips"

    invoke-static {v4, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/android/camera/constant/AiSceneModeConstant;->isPopTipRequired(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateTipState(I)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public reConfigQrCodeTip()Z
    .locals 5

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v1, 0x0

    const/16 v2, 0xa3

    if-ne v2, v0, :cond_3

    invoke-static {}, Lcom/android/camera/protocol/protocols/MakeupProtocol;->impl2()Lcom/android/camera/protocol/protocols/MakeupProtocol;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/MakeupProtocol;->isSeekBarVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z

    move-result v4

    if-nez v4, :cond_2

    if-nez v3, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideQrCodeTip()V

    return v2

    :cond_3
    return v1
.end method

.method public reInitTipImage()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->provideAnimateElement(ILjava/util/List;I)V

    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modeCoordinator"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeCoordinator;)V

    const-class v0, Lcom/android/camera/protocol/protocols/BottomPopupTips;

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinator;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeCoordinator;Lcom/android/camera/protocol/protocols/HandleBackTrace;)V

    return-void
.end method

.method public showOrHideTipGuideWindow(ZI)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isShow",
            "gravity"
        }
    .end annotation

    return-void
.end method

.method public showQrCodeTip(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->reConfigQrCodeTip()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimerBurstController()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/timerburst/TimerBurstController;->isInTimerBurstShotting()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPopupTipLabel:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPopupTipResult:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateDynamicImage()V

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p1

    invoke-virtual {p1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0O0000O()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isOCREnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/xiaomi/ocr/sdk_ocr/OCREngineWrapper;->getInstance()Lcom/xiaomi/ocr/sdk_ocr/OCREngineWrapper;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/xiaomi/ocr/sdk_ocr/OCREngineWrapper;->suppressRegionDetection(I)V

    :cond_2
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0o;->OooOOo()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 p1, 0x9

    invoke-static {p0, p1}, Lcom/android/camera/MiuiCameraSound;->playCameraSound(Landroid/content/Context;I)V

    :cond_3
    return-void
.end method

.method public toggleOCRTip(Z)V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportOCR"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visible"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "toggleOCRTip: visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "FragmentBottomPopupTips"

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x7

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->isDynamicTipVisible(I)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPopupTipLabel:Ljava/lang/Integer;

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateDynamicImage()V

    invoke-static {}, Lcom/android/camera/CameraSettings;->needOCRFirstUseBubble()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightDynamicImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->getPanelEntranceView(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;)Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/o0OOO0OO;

    invoke-direct {v0, p0, p1}, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/o0OOO0OO;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;Landroid/widget/ImageView;)V

    const-wide/16 v1, 0x15e

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->isDynamicTipVisible(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPopupTipLabel:Ljava/lang/Integer;

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateDynamicImage()V

    :cond_1
    :goto_0
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

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mImageTipHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const-class v0, Lcom/android/camera/protocol/protocols/BottomPopupTips;

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinator;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeCoordinator;Lcom/android/camera/protocol/protocols/HandleBackTrace;)V

    return-void
.end method

.method public varargs updateBg([Landroid/view/View;)V
    .locals 5
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "!isSupportThemeCV"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "views"
        }
    .end annotation

    array-length p0, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_2

    aget-object v1, p1, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;

    invoke-virtual {v2}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->getBgUpdater()Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->getBgUpdater()Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;->updateBg()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->getBgUpdater()Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;->updateBgResourceColor()I

    move-result v2

    invoke-virtual {v3, v1, v4, v2}, Lcom/android/camera/customization/ThemeResource;->setBackgroundColor(Landroid/view/View;II)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public updateDynamicImageLayoutParams()V
    .locals 5

    invoke-static {}, Lcom/android/camera/protocol/protocols/DualController;->impl2()Lcom/android/camera/protocol/protocols/DualController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/DualController;->isZoomPanelVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const v2, 0x7f070171

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportPopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_2
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightDynamicImage:Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastNightTag:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftDynamicImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v3, v1, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftDynamicImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v3, v1, v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    :goto_3
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightDynamicImage:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2, v1, v1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightDynamicImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void
.end method

.method public updateLeftDynamicImage(IZLjava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "show",
            "extraData"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftDynamicImage:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLeftDynamicImage show : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "FragmentBottomPopupTips"

    invoke-static {v4, v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftDynamicImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftDynamicImage:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_2

    :cond_0
    check-cast p3, Ljava/lang/Byte;

    invoke-virtual {p3}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    if-ne p2, v1, :cond_1

    move v2, v1

    :cond_1
    if-eq p1, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    const/16 p2, 0x24

    invoke-direct {p1, p2}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;-><init>(I)V

    const p2, 0x7f08068c

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setRes(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    if-eqz v2, :cond_3

    const p2, 0x7f12009b

    goto :goto_0

    :cond_3
    const p2, 0x7f12009a

    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setDesc(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setHideSelf(Z)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBackgroundUpdater:Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setBgUpdater(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    const-wide/16 p2, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->setDuration(J)Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->setPriority(I)Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mOnclickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    invoke-virtual {p1, v2}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setActivated(Z)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->setGravity(I)Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateDynamicImageLayoutParams()V

    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->build()Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImageRoot:Landroid/widget/FrameLayout;

    invoke-static {p2}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->applyItem(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public updateLyingDirectHint(ZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "show",
            "refrensh"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    if-nez p2, :cond_1

    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mIsShowLyingDirectHint:Z

    :cond_1
    iget-boolean p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mIsShowLyingDirectHint:Z

    const/16 p2, 0x8

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLyingDirectHint:Landroid/widget/TextView;

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a031b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLyingDirectHint:Landroid/widget/TextView;

    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/protocols/DualController;->impl2()Lcom/android/camera/protocol/protocols/DualController;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/DualController;->isZoomPanelVisible()Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v0

    goto :goto_0

    :cond_3
    move p1, v1

    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/MakeupProtocol;->impl2()Lcom/android/camera/protocol/protocols/MakeupProtocol;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lcom/android/camera/protocol/protocols/MakeupProtocol;->isSeekBarVisible()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v0

    goto :goto_1

    :cond_4
    move v2, v1

    :goto_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v3}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    if-nez p1, :cond_6

    if-nez v2, :cond_6

    if-nez v0, :cond_6

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLyingDirectHint:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLyingDirectHint:Landroid/widget/TextView;

    const/high16 p2, 0x43340000    # 180.0f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setRotation(F)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLyingDirectHint:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0707f4

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->reIntTipViewMarginBottom(Landroid/view/View;I)V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLyingDirectHint:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 p0, 0xb4

    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackLyingDirectShow(I)V

    goto :goto_3

    :cond_6
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLyingDirectHint:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLyingDirectHint:Landroid/widget/TextView;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_8

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLyingDirectHint:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_8
    :goto_3
    return-void
.end method

.method public updateNightTip(IZLjava/lang/Object;)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportNewNightTips"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "show",
            "extraData"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p3, v0

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    iget v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastNightTag:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNightCaptureExpTime:I

    if-ne p3, v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->directHideLyingDirectHint()V

    iput p3, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNightCaptureExpTime:I

    goto :goto_0

    :cond_2
    iput v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNightCaptureExpTime:I

    :goto_0
    iput p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastNightTag:I

    const/4 p2, 0x4

    iget p3, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNightCaptureExpTime:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateTargetTipImage(ILjava/lang/Object;I)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateNightTipImage mLastNightTag:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastNightTag:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mNightCaptureExpTime:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNightCaptureExpTime:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "FragmentBottomPopupTips"

    invoke-static {p2, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public updateTargetTipImage(ILjava/lang/Object;I)Z
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportNewNightTips"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "data",
            "tag"
        }
    .end annotation

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCustomRoot:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCustomRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    if-ge v0, p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCustomRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->getKey()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/modeui/panelentrance/DynamicViewEntranceItem;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftDynamicImage:Landroid/widget/ImageView;

    invoke-virtual {v1, p1, v2, p2, p3}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicViewEntranceItem;->updateNightTip(Landroid/view/View;Landroid/widget/ImageView;Ljava/lang/Object;I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public updateTipImage()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateTipImage mCustomRoot is null : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCustomRoot:Landroid/widget/FrameLayout;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    const-string v4, "FragmentBottomPopupTips"

    invoke-static {v4, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCustomRoot:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/expandable/Expandable;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/protocols/CvLensProtocol;->impl2()Lcom/android/camera/protocol/protocols/CvLensProtocol;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/CvLensProtocol;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v3, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateNightTip(IZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragment;->mAppController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/AppController;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/android/camera/AppController;->getModeUI()Lcom/android/camera/fragment/modeui/IModeUI;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Lcom/android/camera/AppController;->getModeUI()Lcom/android/camera/fragment/modeui/IModeUI;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/fragment/modeui/IModeUI;->getPanelEntranceItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Lcom/android/camera/AppController;->getModeUI()Lcom/android/camera/fragment/modeui/IModeUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/fragment/modeui/IModeUI;->getPanelEntranceItems()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNormalViews:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->cancelUpdateTipImage()V

    invoke-static {v0}, Lio/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object v2

    const-class v3, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->ofType(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v2

    sget-object v3, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/ooo0Oo0;->o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00O0OoO/ooo0Oo0;

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v2

    invoke-static {}, Lcom/xiaomi/camera/rx/CameraSchedulers;->isOnMainThread()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->trampoline()Lio/reactivex/Scheduler;

    move-result-object v3

    goto :goto_1

    :cond_4
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v2

    new-instance v3, Lcom/android/camera/fragment/FragmentBottomPopupTips$2;

    invoke-direct {v3, p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips$2;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;)V

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    invoke-static {v0}, Lio/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object v0

    const-class v2, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem;

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->ofType(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v2, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/o0oo0000;->o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00O0OoO/o0oo0000;

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/camera/rx/CameraSchedulers;->isOnMainThread()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->trampoline()Lio/reactivex/Scheduler;

    move-result-object v2

    goto :goto_2

    :cond_5
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v2, Lcom/android/camera/fragment/FragmentBottomPopupTips$3;

    invoke-direct {v2, p0, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips$3;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;Ljava/util/Map;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideAllTipImage(Z)V

    :goto_3
    return-void
.end method

.method public updateTipState(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mCurrentAiSceneLevel"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/camera/constant/AiSceneModeConstant;->isPopTipRequired(I)Z

    move-result v0

    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipState:Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;->deactivateTip()V

    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimerBurstController()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/timerburst/TimerBurstController;->isInTimerBurstShotting()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/android/camera/timerburst/TimerBurstController;->isPendingStopTimerBurst()Z

    move-result v1

    if-nez v1, :cond_2

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "FragmentBottomPopupTips"

    const-string v3, "[updateTipState]:  isInTimerBurstShotting, do not show tips"

    invoke-static {v1, v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_0
    if-eqz v2, :cond_6

    const/16 v0, 0x26

    if-ne p1, v0, :cond_3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSettingAiTipOfCardEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showIDCardTip()V

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    :cond_4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSettingAiTipOfDocEnable()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/android/camera/CameraSettings;->isOCRNeed()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showAIDocTip()V

    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipState:Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;->activeTip()V

    goto :goto_2

    :cond_6
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipState:Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;->deactivatingTip()V

    :goto_2
    return-void
.end method

.method public updateView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "savedInstanceState"
        }
    .end annotation

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    invoke-static {p1}, Lcom/android/camera/Util;->alignPopupBottom(Landroid/view/View;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0704a3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    return-void
.end method
