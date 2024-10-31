.class public Lcom/android/camera2/compat/theme/custom/cv/panleentrance/FragmentKaleidoscopeCV;
.super Lcom/android/camera/fragment/live/FragmentKaleidoscope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera2/compat/theme/custom/cv/panleentrance/FragmentKaleidoscopeCV$KaleidoscopeAdapterCV;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FragmentKaleidoscopeCV"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/live/FragmentKaleidoscope;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera2/compat/theme/custom/cv/panleentrance/FragmentKaleidoscopeCV;ILandroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->onItemSelected(ILandroid/view/View;)V

    return-void
.end method


# virtual methods
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

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07044d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mItemWidth:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mTotalWidth:I

    const v0, 0x7f0a02b3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mKaleidoscopeRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mSelectIndex:I

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningKaleidoscope()Lcom/android/camera/data/data/runing/ComponentRunningKaleidoscope;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mComponentRunningKaleidoscope:Lcom/android/camera/data/data/runing/ComponentRunningKaleidoscope;

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningKaleidoscope;->getItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mKaleidoscopeList:Ljava/util/List;

    iget-object v0, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mComponentRunningKaleidoscope:Lcom/android/camera/data/data/runing/ComponentRunningKaleidoscope;

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningKaleidoscope;->getKaleidoscopeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    move v1, p1

    :goto_0
    iget-object v2, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mKaleidoscopeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mKaleidoscopeList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v2, v2, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput v1, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mSelectIndex:I

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v0, Lcom/android/camera2/compat/theme/custom/cv/panleentrance/FragmentKaleidoscopeCV$KaleidoscopeAdapterCV;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mKaleidoscopeList:Ljava/util/List;

    iget v3, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mSelectIndex:I

    new-instance v4, Lcom/android/camera2/compat/theme/custom/cv/panleentrance/FragmentKaleidoscopeCV$1;

    invoke-direct {v4, p0}, Lcom/android/camera2/compat/theme/custom/cv/panleentrance/FragmentKaleidoscopeCV$1;-><init>(Lcom/android/camera2/compat/theme/custom/cv/panleentrance/FragmentKaleidoscopeCV;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera2/compat/theme/custom/cv/panleentrance/FragmentKaleidoscopeCV$KaleidoscopeAdapterCV;-><init>(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;)V

    iput-object v0, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mAdapter:Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter;

    new-instance v0, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "kaleidoscope_list"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mKaleidoscopeRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/android/camera/fragment/DefaultItemAnimator;

    invoke-direct {v0}, Lcom/android/camera/fragment/DefaultItemAnimator;-><init>()V

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    iget-object p1, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mKaleidoscopeRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    new-instance p1, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationPanel()Lcom/android/camera2/compat/theme/common/MiThemeOperationPanelInterface;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/camera2/compat/theme/common/MiThemeOperationPanelInterface;->getPanelMarginStart(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;-><init>(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mKaleidoscopeRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mKaleidoscopeRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mAdapter:Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget v0, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mSelectIndex:I

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->setItemInCenter(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mKaleidoscopeRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/camera2/compat/theme/custom/cv/panleentrance/FragmentKaleidoscopeCV$2;

    invoke-direct {v1, p0, p1}, Lcom/android/camera2/compat/theme/custom/cv/panleentrance/FragmentKaleidoscopeCV$2;-><init>(Lcom/android/camera2/compat/theme/custom/cv/panleentrance/FragmentKaleidoscopeCV;Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isVisibleToUser"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseViewPagerFragment;->setUserVisibleHint(Z)V

    iget-object p0, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mAdapter:Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
