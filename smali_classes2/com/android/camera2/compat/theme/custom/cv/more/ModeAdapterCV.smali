.class public Lcom/android/camera2/compat/theme/custom/cv/more/ModeAdapterCV;
.super Lcom/android/camera/fragment/mode/ModeAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/fragment/mode/FragmentMoreModeBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "modeBase"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/mode/ModeAdapter;-><init>(Landroid/content/Context;Lcom/android/camera/fragment/mode/FragmentMoreModeBase;)V

    return-void
.end method


# virtual methods
.method public createTouchHelper()Landroidx/recyclerview/widget/ItemTouchHelper;
    .locals 4

    iget v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v1, Lcom/android/camera2/compat/theme/custom/cv/more/ModeTouchHelperCallbackCV;

    iget-object v2, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-direct {v1, v2, v3, p0}, Lcom/android/camera2/compat/theme/custom/cv/more/ModeTouchHelperCallbackCV;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/camera/fragment/mode/IMoreMode;)V

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    return-object v0
.end method

.method public createViewHolder(Landroid/view/View;IZ)Lcom/android/camera/fragment/mode/ModeViewHolder;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "viewType",
            "handlerTouch"
        }
    .end annotation

    new-instance p0, Lcom/android/camera2/compat/theme/custom/cv/more/ModeViewHolderCV;

    invoke-direct {p0, p1, p2}, Lcom/android/camera2/compat/theme/custom/cv/more/ModeViewHolderCV;-><init>(Landroid/view/View;I)V

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    new-array p3, p2, [Landroid/view/View;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    invoke-static {p3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p3

    invoke-interface {p3}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p3

    const/high16 v1, 0x3f800000    # 1.0f

    new-array p2, p2, [Lmiuix/animation/ITouchStyle$TouchType;

    sget-object v2, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    aput-object v2, p2, v0

    invoke-interface {p3, v1, p2}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p2

    const p3, 0x3e99999a    # 0.3f

    const/4 v1, 0x0

    invoke-interface {p2, p3, v1, v1, v1}, Lmiuix/animation/ITouchStyle;->setTint(FFFF)Lmiuix/animation/ITouchStyle;

    move-result-object p2

    new-array p3, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p2, p1, p3}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    :cond_0
    return-object p0
.end method

.method public getItemCount()I
    .locals 2

    iget v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr p0, v1

    return p0

    :cond_0
    invoke-super {p0}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItemCount()I

    move-result p0

    return p0
.end method

.method public getViewHolderLayoutRes()I
    .locals 1

    iget p0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const p0, 0x7f0d019b

    goto :goto_0

    :cond_0
    const p0, 0x7f0d019a

    :goto_0
    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "modeViewHolder",
            "position"
        }
    .end annotation

    check-cast p1, Lcom/android/camera/fragment/mode/ModeViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera2/compat/theme/custom/cv/more/ModeAdapterCV;->onBindViewHolder(Lcom/android/camera/fragment/mode/ModeViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/fragment/mode/ModeViewHolder;I)V
    .locals 0
    .param p1    # Lcom/android/camera/fragment/mode/ModeViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "modeViewHolder",
            "position"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/mode/ModeAdapter;->onBindViewHolder(Lcom/android/camera/fragment/mode/ModeViewHolder;I)V

    iget p0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    const/4 p2, 0x1

    if-ne p0, p2, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p0

    const/4 p2, 0x5

    if-ne p0, p2, :cond_0

    iget-object p0, p1, Lcom/android/camera/fragment/mode/ModeViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p1

    const p2, 0x7f060380

    invoke-virtual {p1, p2}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "viewGroup",
            "viewType"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/camera2/compat/theme/custom/cv/more/ModeAdapterCV;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/mode/ModeViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/mode/ModeViewHolder;
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewGroup",
            "viewType"
        }
    .end annotation

    iget v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    new-instance p1, Landroid/view/View;

    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07024f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera2/compat/theme/custom/cv/more/ModeAdapterCV;->createViewHolder(Landroid/view/View;IZ)Lcom/android/camera/fragment/mode/ModeViewHolder;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/mode/ModeAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/mode/ModeViewHolder;

    move-result-object p0

    return-object p0
.end method
