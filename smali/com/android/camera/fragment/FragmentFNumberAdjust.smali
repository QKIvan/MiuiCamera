.class public Lcom/android/camera/fragment/FragmentFNumberAdjust;
.super Lcom/android/camera/fragment/BaseFragment;

# interfaces
.implements Lcom/android/camera/protocol/protocols/FNumberController;
.implements Lcom/android/camera/protocol/protocols/HandleBackTrace;
.implements Lcom/android/camera/fragment/manually/ZoomValueListener;
.implements Lio/reactivex/functions/Consumer;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/FragmentFNumberAdjust$FNumberShowState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/fragment/BaseFragment;",
        "Lcom/android/camera/protocol/protocols/FNumberController;",
        "Lcom/android/camera/protocol/protocols/HandleBackTrace;",
        "Lcom/android/camera/fragment/manually/ZoomValueListener;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/String;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;"
    }
.end annotation


# static fields
.field public static final FRAGMENT_INFO:I = 0xffb

.field public static final HIDE_TIP:I = 0x1

.field private static final SEEKBAR_PROGRESS_RATIO:I = 0x1

.field public static final SHOW_BEAUTY_LENS:I = 0x0

.field public static final SHOW_BOKEH:I = 0x1

.field public static final SHOW_FNUMBER:I = 0x2

.field public static final SHOW_NONE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "FragmentFNumberAdjust"


# instance fields
.field public mAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

.field public mBeautyLensListContainer:Landroid/widget/FrameLayout;

.field public mBeautyLensRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

.field public mBottomTextViewHeight:I

.field public mComponentRunningBeautyLens:Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;

.field public mCurrentIndex:I

.field public mCurrentShowState:I

.field private mFlowableEmitter:Lio/reactivex/FlowableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/FlowableEmitter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mFnumberSlideTip:Landroid/widget/TextView;

.field public mFnumberSlideTipLayout:Landroid/view/View;

.field public mFnumberSlideView:Lcom/android/camera/ui/HorizontalZoomView;

.field public mHandler:Landroid/os/Handler;

.field private mHolderHeight:I

.field private mHolderWidth:I

.field private mLastIndex:I

.field private mLastShowState:I

.field private mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

.field public mParentLayout:Landroid/widget/LinearLayout;

.field private mSeekBarDisposable:Lio/reactivex/disposables/Disposable;

.field public mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;

.field private mSupportShowType:I

.field public mTextView:Landroid/widget/TextView;

.field private mTotalWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSupportShowType:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentIndex:I

    iput v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mLastIndex:I

    iput v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mLastShowState:I

    iput v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentShowState:I

    new-instance v0, Lcom/android/camera/fragment/FragmentFNumberAdjust$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/fragment/FragmentFNumberAdjust$3;-><init>(Lcom/android/camera/fragment/FragmentFNumberAdjust;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/FragmentFNumberAdjust;)Lcom/android/camera/ui/SeekBarCompat;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/FragmentFNumberAdjust;)Lio/reactivex/FlowableEmitter;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFlowableEmitter:Lio/reactivex/FlowableEmitter;

    return-object p0
.end method

.method private initAdjustSeekBar()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportedBeautyLens"
        type = 0x2
    .end annotation

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SeekBarCompat;->setDegree(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationZoom()Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;->isSupportSlideViewShowValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SeekBarCompat;->setSupportShowValue(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080c23

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SeekBarCompat;->setCenterTwoWayMode(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMin(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFNumber()Lcom/android/camera/data/data/config/ComponentRunningFNumber;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentRunningFNumber;->getFNumberProgress()I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/ui/SeekBarCompat;->setProgress(IZ)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSeekBarDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO000;

    invoke-direct {v0, p0}, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO000;-><init>(Lcom/android/camera/fragment/FragmentFNumberAdjust;)V

    sget-object v1, Lio/reactivex/BackpressureStrategy;->DROP:Lio/reactivex/BackpressureStrategy;

    invoke-static {v0, v1}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/android/camera/fragment/FragmentFNumberAdjust$1;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/FragmentFNumberAdjust$1;-><init>(Lcom/android/camera/fragment/FragmentFNumberAdjust;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->onBackpressureDrop(Lio/reactivex/functions/Consumer;)Lio/reactivex/Flowable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSeekBarDisposable:Lio/reactivex/disposables/Disposable;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    new-instance v1, Lcom/android/camera/fragment/FragmentFNumberAdjust$2;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/FragmentFNumberAdjust$2;-><init>(Lcom/android/camera/fragment/FragmentFNumberAdjust;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SeekBarCompat;->setOnSeekBarChangeListener(Lcom/android/camera/ui/SeekBarCompat$OnSeekBarCompatChangeListener;)V

    return-void
.end method

.method private isVisible(Landroid/view/View;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$initAdjustSeekBar$0(Lio/reactivex/FlowableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "e"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFlowableEmitter:Lio/reactivex/FlowableEmitter;

    return-void
.end method

.method private notifyItemChanged(II)V
    .locals 6
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldIndex",
            "newIndex"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/camera/fragment/EffectItemAdapter$ItemChangeData;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/android/camera/fragment/EffectItemAdapter$ItemChangeData;-><init>(ZI)V

    new-instance v1, Lcom/android/camera/fragment/EffectItemAdapter$ItemChangeData;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p2}, Lcom/android/camera/fragment/EffectItemAdapter$ItemChangeData;-><init>(ZI)V

    const/4 v3, -0x1

    if-le p1, v3, :cond_3

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mComponentRunningBeautyLens:Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/data/data/ComponentDataItem;

    iget v4, v4, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    iget-object v5, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    const v4, 0x7f1204a1

    :goto_0
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v4, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-virtual {v4, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_3
    if-le p2, v3, :cond_5

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mComponentRunningBeautyLens:Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/ComponentDataItem;

    iget v0, v0, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v3, v0, v2}, Lcom/android/camera/fragment/EffectItemAdapter;->setAccessible(Landroid/view/View;IZ)V

    :cond_4
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-virtual {v0, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_5
    invoke-virtual {p0, p2, p1}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->showOrHideBokehPanel(II)V

    return-void
.end method

.method private onItemSelected(IZ)V
    .locals 7
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "fromClick"
        }
    .end annotation

    const-string v0, "invalid filter id: "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onItemSelected: index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", fromClick = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mCurrentMode = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", DataRepository.dataItemGlobal().getCurrentMode() = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "FragmentFNumberAdjust"

    invoke-static {v1, p2}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object p2

    const/4 v2, 0x0

    if-nez p2, :cond_0

    new-array p0, v2, [Ljava/lang/Object;

    const-string/jumbo p1, "onItemSelected: configChanges = null"

    invoke-static {v1, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mComponentRunningBeautyLens:Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v3, v3, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mComponentRunningBeautyLens:Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/data/data/ComponentDataItem;

    iget v4, v4, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    if-lez v4, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onItemSelected: beautyLensValue = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " displayNameRes = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v4, "attr_beauty_lens_id"

    const-string v5, "click"

    invoke-static {v4, v3, v5}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v3}, Lcom/android/camera/protocol/protocols/ConfigChanges;->setBeautyLens(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->selectItem(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private scrollIfNeed(I)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selected"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-virtual {p0}, Lcom/android/camera/fragment/EffectItemAdapter;->getItemCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    const/4 v0, 0x0

    add-int/lit8 p1, p1, -0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private selectItem(I)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentIndex:I

    iput v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mLastIndex:I

    iput p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentIndex:I

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->scrollIfNeed(I)V

    iget p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mLastIndex:I

    iget v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentIndex:I

    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->notifyItemChanged(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic OooO0OO(Lio/reactivex/FlowableEmitter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->lambda$initAdjustSeekBar$0(Lio/reactivex/FlowableEmitter;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "newValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->accept(Ljava/lang/String;)V

    return-void
.end method

.method public accept(Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/CameraSettings;->readFNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->writeFNumber(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/protocol/protocols/ManuallyValueChanged;->impl2()Lcom/android/camera/protocol/protocols/ManuallyValueChanged;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget p0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentShowState:I

    const/4 v1, -0x1

    if-eq p0, v1, :cond_2

    invoke-interface {v0, p1}, Lcom/android/camera/protocol/protocols/ManuallyValueChanged;->onBokehFNumberValueChanged(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public getCurrentIndex()I
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget p0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentIndex:I

    return p0
.end method

.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xffb

    return p0
.end method

.method public getLastIndex()I
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget p0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mLastIndex:I

    return p0
.end method

.method public getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d00a0

    return p0
.end method

.method public initSlideFNumberView()V
    .locals 5

    invoke-static {}, Lcom/android/camera/CameraSettings;->readFNumber()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {v1, v2, v0, p0, v3}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/camera/fragment/manually/ZoomValueListener;I)V

    iput-object v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideView:Lcom/android/camera/ui/HorizontalZoomView;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/camera/ui/HorizontalZoomView;->setListener(Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;)V

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideView:Lcom/android/camera/ui/HorizontalZoomView;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/ui/HorizontalZoomView;->setDrawAdapter(Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;IZ)V

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;->mapValueToPosition(Ljava/lang/Object;)F

    move-result v0

    float-to-int v0, v0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideView:Lcom/android/camera/ui/HorizontalZoomView;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/HorizontalZoomView;->setSelection(IZ)V

    return-void
.end method

.method public initSlideTipRotation()V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportThemeCV"
        type = 0x0
    .end annotation

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideTip:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRotation(F)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideTip:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    if-eqz v0, :cond_1

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideTip:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->measure(II)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideTip:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideTip:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideTip:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f070880

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    neg-int p0, p0

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p0, v0

    int-to-float p0, p0

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideTip:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f07088c

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTranslationY(F)V

    :cond_2
    :goto_1
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const v0, 0x7f0a0234

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/android/camera/Util;->alignPopupBottom(Landroid/view/View;)V

    const v0, 0x7f0a0235

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/HorizontalZoomView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideView:Lcom/android/camera/ui/HorizontalZoomView;

    const v0, 0x7f0a0237

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideTipLayout:Landroid/view/View;

    const v0, 0x7f0a0236

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideTip:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideTip:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationZoom()Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;->getShadowStyleRes()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/customization/ThemeResource;->setTextShadowStyle(Landroid/widget/TextView;I)V

    const v0, 0x7f0a00ab

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensListContainer:Landroid/widget/FrameLayout;

    const v0, 0x7f0a00aa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "beauty_lens_list"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;-><init>(Landroid/content/Context;IZLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/android/camera/fragment/DefaultItemAnimator;

    invoke-direct {v0}, Lcom/android/camera/fragment/DefaultItemAnimator;-><init>()V

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mTotalWidth:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07014e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mHolderWidth:I

    iput v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mHolderHeight:I

    const v0, 0x7f0a00ac

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SeekBarCompat;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    const v0, 0x7f0a00a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mTextView:Landroid/widget/TextView;

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->provideAnimateElement(ILjava/util/List;I)V

    return-void
.end method

.method public isAnimation()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arrivedType"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->provideAnimateElement(ILjava/util/List;I)V

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

    return-void
.end method

.method public notifyThemeChanged(ILjava/util/List;I)V
    .locals 1
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

    iget p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSupportShowType:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->initSlideFNumberView()V

    goto :goto_0

    :cond_0
    const/4 p3, -0x1

    if-eq p1, p3, :cond_1

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->initAdjustSeekBar()V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p3

    const v0, 0x7f060371

    invoke-virtual {p3, v0}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    iget p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentShowState:I

    if-ne p1, p2, :cond_2

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;->setEnable(Z)V

    :cond_2
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

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->isVisible(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x4

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget v3, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentShowState:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    return v1

    :cond_2
    const/4 v3, 0x3

    if-ne p1, v3, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->toHideBeautyLensPanel()Z

    move-result p1

    if-nez p1, :cond_4

    xor-int/lit8 p1, v0, 0x1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->toHideBokehPanel(Z)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->reInitTipImage()V

    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->updateImageBokehIndicatorUiMargin(Z)Z

    :cond_5
    return v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "FragmentFNumberAdjust"

    if-nez v0, :cond_0

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "ignore click due to disabled"

    invoke-static {v2, p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/utils/RunningStateUtil;->isDoingAction()Z

    move-result v0

    if-eqz v0, :cond_1

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "ignore click due to doing action"

    invoke-static {v2, p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iget v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentShowState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentIndex:I

    if-ne v1, v0, :cond_5

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p0

    if-eqz p0, :cond_4

    const p0, 0x8000

    invoke-virtual {p1, p0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_4
    return-void

    :cond_5
    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->onItemSelected(IZ)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ui/SeekBarCompat;->clean()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->resetSlideTip()V

    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onDestroyView()V

    return-void
.end method

.method public onManuallyDataChanged(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "newValue",
            "action"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isInModeChanging()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/ManuallyValueChanged;->impl2()Lcom/android/camera/protocol/protocols/ManuallyValueChanged;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentShowState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    invoke-interface {p2, p1}, Lcom/android/camera/protocol/protocols/ManuallyValueChanged;->onBokehFNumberValueChanged(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "f"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    const/4 v1, 0x4

    invoke-interface {p2, v1, v0, p1}, Lcom/android/camera/protocol/protocols/TopAlert;->alertUpdateValue(IILjava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationZoom()Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;->isSupportSlideViewShowValue()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideTipLayout:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideTip:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->initSlideTipRotation()V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mHandler:Landroid/os/Handler;

    const-wide/16 p1, 0x3e8

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    return-void
.end method

.method public onZoomItemSlideOn(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "largeShow"
        }
    .end annotation

    iget p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentShowState:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->canProvide()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x7

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {p1, p2, v0}, Lcom/android/camera/MiuiCameraSound;->playCameraSound(Landroid/content/Context;IF)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, LOooO0OO/OooO0O0/OooO0Oo/OooOo00;->OooOOO0(Landroid/content/Context;)LOooO0OO/OooO0O0/OooO0Oo/OooOo00;

    move-result-object p0

    invoke-virtual {p0}, LOooO0OO/OooO0O0/OooO0Oo/OooOo00;->OooO0O0()V

    :cond_1
    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 3
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

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRatio()Lcom/android/camera/data/data/config/ComponentConfigRatio;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getComponentValue(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/LinearLayout;

    const-string v1, "4x3"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_3

    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    move p2, v2

    goto :goto_1

    :cond_3
    :goto_0
    move p2, v1

    :goto_1
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBottomTextViewHeight:I

    const/4 p2, 0x2

    if-ne p3, p2, :cond_4

    const/4 p3, 0x5

    goto :goto_2

    :cond_4
    const/4 p3, 0x4

    :goto_2
    invoke-virtual {p0, p3}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->onBackEvent(I)Z

    const/16 p3, 0xab

    const/4 v0, -0x1

    if-ne p1, p3, :cond_9

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p1

    invoke-virtual {p1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0OO0oOo()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isLightingVersion1(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "0"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportBeautyLensDevice()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result p1

    if-eqz p1, :cond_6

    iput v2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentShowState:I

    iput v2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSupportShowType:I

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningBeautyLens()Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mComponentRunningBeautyLens:Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationPanel()Lcom/android/camera2/compat/theme/common/MiThemeOperationPanelInterface;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mComponentRunningBeautyLens:Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;

    invoke-interface {p1, p2, p3, v2}, Lcom/android/camera2/compat/theme/common/MiThemeOperationPanelInterface;->getEffectItemAdapter(Landroid/content/Context;Lcom/android/camera/data/data/ComponentData;Z)Lcom/android/camera/fragment/EffectItemAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    goto :goto_4

    :cond_6
    iput v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentShowState:I

    iput v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSupportShowType:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mComponentRunningBeautyLens:Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    goto :goto_4

    :cond_7
    iput p2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentShowState:I

    iput p2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSupportShowType:I

    goto :goto_4

    :cond_8
    :goto_3
    iput v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentShowState:I

    iput v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSupportShowType:I

    :cond_9
    :goto_4
    iget p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mLastShowState:I

    iget p2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentShowState:I

    if-ne p1, p2, :cond_a

    return-void

    :cond_a
    iput p2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mLastShowState:I

    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;

    move-result-object p1

    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MasterFilterProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MasterFilterProtocol;

    move-result-object p2

    if-eqz p1, :cond_b

    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result p1

    if-nez p1, :cond_c

    :cond_b
    if-eqz p2, :cond_d

    invoke-interface {p2}, Lcom/android/camera/protocol/protocols/expandable/Expandable;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_d

    :cond_c
    iput v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentShowState:I

    :cond_d
    iget p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentShowState:I

    if-eq p1, v0, :cond_e

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensListContainer:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetGone(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mTextView:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetGone(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-static {p1}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetGone(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-static {p1}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetGone(Landroid/view/View;)V

    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->updateImageBokehIndicatorUiMargin(Z)Z

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_5

    :cond_e
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensListContainer:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetGone(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mTextView:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetGone(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetGone(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-static {p1}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetGone(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->isVisible(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/LinearLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_f
    :goto_5
    return-void
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

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

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SeekBarCompat;->setDegree(I)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->initSlideTipRotation()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_4

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/EffectItemAdapter;->setRotation(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p2

    :goto_1
    if-ge v0, p1, :cond_3

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 p2, p2, 0x1

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-virtual {p1}, Lcom/android/camera/fragment/EffectItemAdapter;->getItemCount()I

    move-result p1

    if-ge p2, p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_2

    :cond_4
    :goto_3
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

    const-class v0, Lcom/android/camera/protocol/protocols/FNumberController;

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinator;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeCoordinator;Lcom/android/camera/protocol/protocols/HandleBackTrace;)V

    return-void
.end method

.method public resetSlideTip()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideTipLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideTip:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public scrollFnumberSlide(Landroid/view/MotionEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    iget v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSupportShowType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_0

    neg-float v1, v1

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    :cond_0
    const/16 v3, 0xb4

    if-ne v2, v3, :cond_1

    neg-float v0, v0

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    :cond_1
    const/16 v3, 0x10e

    if-ne v2, v3, :cond_2

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/HorizontalZoomView;->onTouch(Landroid/view/MotionEvent;)V

    :cond_3
    return-void
.end method

.method public showBeautyLensPanel()V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportedBeautyLens"
        type = 0x2
    .end annotation

    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;

    move-result-object v0

    const-string v1, "FragmentFNumberAdjust"

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "beauty panel shown. do not show the slide view."

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, "showBeautyLensPanel"

    invoke-static {v1, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensListContainer:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mComponentRunningBeautyLens:Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;

    const/16 v1, 0xab

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/ComponentData;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentIndex:I

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/EffectItemAdapter;->setRotation(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/EffectItemAdapter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/EffectItemAdapter;->setOnEffectItemListener(Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;)V

    new-instance v0, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mTextView:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v1

    iget v2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBottomTextViewHeight:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/camera/Util;->alignPopupBottom(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->animateEntrance(Landroid/view/View;)V

    iget v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentIndex:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->initAdjustSeekBar()V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120216

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070154

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/SeekBar;->setPadding(IIII)V

    new-instance v0, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-direct {v0, v2}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-static {v0}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mTextView:Landroid/widget/TextView;

    const v2, 0x7f12020c

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/ModeSelector;->impl2()Lcom/android/camera/protocol/protocols/ModeSelector;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/ModeSelector;->switchModeOrExternalTipLayout(Z)V

    :cond_2
    iput v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentShowState:I

    return-void
.end method

.method public showBokehPanel()V
    .locals 15

    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;

    move-result-object v0

    const-string v1, "FragmentFNumberAdjust"

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "beauty panel shown. do not show the slide view."

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showBokehPanel mSupportShowType is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSupportShowType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSupportShowType:I

    const v1, 0x7f120216

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->initSlideFNumberView()V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;

    invoke-virtual {v0, v4}, Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;->setEnable(Z)V

    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl2()Lcom/android/camera/protocol/protocols/MainContentProtocol;

    move-result-object v0

    invoke-virtual {p0, v4}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->updateImageBokehIndicatorUiMargin(Z)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v6

    iget v7, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBottomTextViewHeight:I

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Lcom/android/camera/Util;->alignPopupBottom(Landroid/view/View;I)V

    :cond_1
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/LinearLayout;

    invoke-static {v5}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    iget-object v5, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-static {v5}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    iget-object v5, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mTextView:Landroid/widget/TextView;

    invoke-static {v5}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    iget-object v5, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v5

    const v6, 0x7f060371

    invoke-virtual {v5, v6}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const v7, 0x3f666666    # 0.9f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    const/high16 v12, 0x3f000000    # 0.5f

    const/4 v13, 0x1

    const/high16 v14, 0x3f000000    # 0.5f

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v5, 0x12c

    invoke-virtual {v1, v5, v6}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    new-instance v5, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v5}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v1, v5}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v5, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {v5, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v1

    iget-object v5, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v1, v5

    invoke-interface {v0, v4, v1, v4}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->updateMaskCover(ZIZ)V

    :cond_2
    invoke-virtual {p0, v3, v4}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->showOrHideBottomMenu(ZZ)V

    iput v2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentShowState:I

    goto :goto_0

    :cond_3
    if-ne v0, v4, :cond_5

    new-instance v0, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mTextView:Landroid/widget/TextView;

    invoke-direct {v0, v2}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v2

    iget v5, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBottomTextViewHeight:I

    sub-int/2addr v2, v5

    invoke-static {v0, v2}, Lcom/android/camera/Util;->alignPopupBottom(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->initAdjustSeekBar()V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070399

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070149

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/widget/SeekBar;->setPadding(IIII)V

    new-instance v0, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    invoke-static {}, Lcom/android/camera/protocol/protocols/ModeSelector;->impl2()Lcom/android/camera/protocol/protocols/ModeSelector;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0, v3}, Lcom/android/camera/protocol/protocols/ModeSelector;->switchModeOrExternalTipLayout(Z)V

    :cond_4
    iput v4, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentShowState:I

    :cond_5
    :goto_0
    return-void
.end method

.method public showOrHideBokehPanel(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "newIndex",
            "oldIndex"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->initAdjustSeekBar()V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f120216

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070154

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/widget/SeekBar;->setPadding(IIII)V

    new-instance p1, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-direct {p1, p0}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-static {p1}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mTextView:Landroid/widget/TextView;

    const p1, 0x7f12020c

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public showOrHideBottomMenu(ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "show",
            "isAnimator"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/protocol/protocols/ModeSelector;->impl2()Lcom/android/camera/protocol/protocols/ModeSelector;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p0, v0, p2}, Lcom/android/camera/protocol/protocols/ModeSelector;->setModeLayoutVisibility(IZ)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    invoke-interface {p0, p1, v0}, Lcom/android/camera/protocol/protocols/ModeSelector;->setModeLayoutVisibility(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public toHideBeautyLensPanel()Z
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportedBeautyLens"
        type = 0x2
    .end annotation

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "FragmentFNumberAdjust"

    const-string/jumbo v1, "toHideBeautyLensPanel"

    invoke-static {v0, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-static {v0}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mTextView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensListContainer:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetGone(Landroid/view/View;)V

    invoke-static {}, Lcom/android/camera/protocol/protocols/ModeSelector;->impl2()Lcom/android/camera/protocol/protocols/ModeSelector;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/ModeSelector;->switchModeOrExternalTipLayout(Z)V

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentShowState:I

    return v1
.end method

.method public toHideBokehPanel(Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "restoreOtherState"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "toHideBokehPanel mSupportShowType is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSupportShowType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentFNumberAdjust"

    invoke-static {v1, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSupportShowType:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideView:Lcom/android/camera/ui/HorizontalZoomView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->resetSlideTip()V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;->setEnable(Z)V

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl2()Lcom/android/camera/protocol/protocols/MainContentProtocol;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, v2, v2, v3}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->updateMaskCover(ZIZ)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-static {v0}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mTextView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    invoke-virtual {p0, v3, p1}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->showOrHideBottomMenu(ZZ)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentShowState:I

    return v3

    :cond_3
    :goto_0
    return v2

    :cond_4
    if-ne v0, v3, :cond_7

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mTextView:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-static {p1}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera/Util;->alignPopupBottom(Landroid/view/View;I)V

    invoke-static {}, Lcom/android/camera/protocol/protocols/ModeSelector;->impl2()Lcom/android/camera/protocol/protocols/ModeSelector;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-interface {p1, v3}, Lcom/android/camera/protocol/protocols/ModeSelector;->switchModeOrExternalTipLayout(Z)V

    :cond_6
    iput v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentShowState:I

    return v3

    :cond_7
    :goto_1
    return v2
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modeCoordinator"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V

    const-class v0, Lcom/android/camera/protocol/protocols/FNumberController;

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinator;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeCoordinator;Lcom/android/camera/protocol/protocols/HandleBackTrace;)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSeekBarDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSeekBarDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {p0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public updateImageBokehIndicatorUiMargin(Z)Z
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isPad"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomVisible"
        }
    .end annotation

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xab

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplay16_10()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBottomTextViewHeight:I

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-static {v1, v2}, Lcom/android/camera/Util;->alignPopupBottom(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public visibleHeight()I
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentShowState:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSupportShowType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return p0

    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensListContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v0, p0

    return v0

    :cond_2
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return p0

    :cond_3
    return v1
.end method
