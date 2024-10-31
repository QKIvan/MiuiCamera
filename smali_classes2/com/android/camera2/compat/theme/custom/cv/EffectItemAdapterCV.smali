.class public Lcom/android/camera2/compat/theme/custom/cv/EffectItemAdapterCV;
.super Lcom/android/camera/fragment/EffectItemAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera2/compat/theme/custom/cv/EffectItemAdapterCV$EffectStillItemHolderCV;,
        Lcom/android/camera2/compat/theme/custom/cv/EffectItemAdapterCV$EffectRealtimeItemHolderCV;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EffectItemAdapterCV"

.field public static final TYPE_HEADER_FOOTER:I = 0x1

.field public static final TYPE_NORMAL:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/data/data/ComponentData;)V
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
            "componentData"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/EffectItemAdapter;-><init>(Landroid/content/Context;Lcom/android/camera/data/data/ComponentData;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/data/data/ComponentData;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "componentData",
            "isSupportRealtimeEffect"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/fragment/EffectItemAdapter;-><init>(Landroid/content/Context;Lcom/android/camera/data/data/ComponentData;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/data/data/ComponentData;ZLcom/xiaomi/renderengine/gl/EglCore;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "componentData",
            "isSupportRealtimeEffect",
            "eglCore"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/fragment/EffectItemAdapter;-><init>(Landroid/content/Context;Lcom/android/camera/data/data/ComponentData;ZLcom/xiaomi/renderengine/gl/EglCore;)V

    return-void
.end method

.method public static synthetic access$002(Lcom/android/camera2/compat/theme/custom/cv/EffectItemAdapterCV;Lcom/xiaomi/renderengine/gl/EglCore;)Lcom/xiaomi/renderengine/gl/EglCore;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mEglCore:Lcom/xiaomi/renderengine/gl/EglCore;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/android/camera2/compat/theme/custom/cv/EffectItemAdapterCV;)Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mEffectItemListener:Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/camera2/compat/theme/custom/cv/EffectItemAdapterCV;)Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mEffectItemListener:Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/camera2/compat/theme/custom/cv/EffectItemAdapterCV;)Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mEffectItemListener:Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/camera2/compat/theme/custom/cv/EffectItemAdapterCV;)Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mEffectItemListener:Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/camera2/compat/theme/custom/cv/EffectItemAdapterCV;)Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mEffectItemListener:Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/camera2/compat/theme/custom/cv/EffectItemAdapterCV;)Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mEffectItemListener:Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/camera2/compat/theme/custom/cv/EffectItemAdapterCV;)Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mEffectItemListener:Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/camera2/compat/theme/custom/cv/EffectItemAdapterCV;)Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mEffectItemListener:Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    const-string v1, "EffectItemAdapterCV"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array p0, v2, [Ljava/lang/Object;

    const-string v0, "mComponentData = null "

    invoke-static {v1, v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    new-array p0, v2, [Ljava/lang/Object;

    const-string v0, " getItems() = null "

    invoke-static {v1, v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    invoke-virtual {p0}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public getItemText(I)Ljava/lang/String;
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    const-string v0, ""

    const/4 v1, 0x0

    const-string v2, "EffectItemAdapterCV"

    if-gtz p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getItemText fail, pos is "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_0
    iget-object v3, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    invoke-virtual {v3}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "getItemText fail, getItem is null"

    invoke-static {v2, p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_1
    iget-object v3, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    invoke-virtual {v3}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "getItemText fail, getItem size is 0"

    invoke-static {v2, p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object v0

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/ComponentDataItem;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getItemText mItems = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    invoke-virtual {v3}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p1, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object p0, p1, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameStr:Ljava/lang/String;

    if-eqz p0, :cond_4

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "can\'t find mode text."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getItemViewType(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera2/compat/theme/custom/cv/EffectItemAdapterCV;->getItemCount()I

    move-result p0

    sub-int/2addr p0, v0

    if-lt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindViewHolderCV position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "EffectItemAdapterCV"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/android/camera2/compat/theme/custom/cv/EffectItemAdapterCV;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "onBindViewHolder TYPE_HEADER_FOOTER"

    invoke-static {v3, v0, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p2, v0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070316

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {}, Lcom/android/camera/display/Display;->getCenterDisplayWidth()I

    move-result v1

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    iput v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput p0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "onBindViewHolder TYPE_NORMAL"

    invoke-static {v3, v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/ComponentDataItem;

    move-object v2, p1

    check-cast v2, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;

    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v2, v1, v0}, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;->bindEffectIndex(ILcom/android/camera/data/data/ComponentDataItem;)V

    iget-boolean p2, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mSupportRealtimeEffect:Z

    if-eqz p2, :cond_2

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a01cf

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget p0, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mDisplayRotation:I

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    :cond_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget p0, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mDegree:I

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setRotation(F)V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    new-instance p2, Landroid/widget/Space;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "EffectItemAdapterCV"

    const-string v1, "[onCreateViewHolder] h&f"

    invoke-static {v0, v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/android/camera2/compat/theme/custom/cv/EffectItemAdapterCV$EffectRealtimeItemHolderCV;

    iget-object v0, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mEglCore:Lcom/xiaomi/renderengine/gl/EglCore;

    invoke-direct {p1, p0, p2, v0}, Lcom/android/camera2/compat/theme/custom/cv/EffectItemAdapterCV$EffectRealtimeItemHolderCV;-><init>(Lcom/android/camera2/compat/theme/custom/cv/EffectItemAdapterCV;Landroid/view/View;Lcom/xiaomi/renderengine/gl/EglCore;)V

    return-object p1

    :cond_0
    iget-boolean p2, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mSupportRealtimeEffect:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0049

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/android/camera2/compat/theme/custom/cv/EffectItemAdapterCV$EffectRealtimeItemHolderCV;

    iget-object v0, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mEglCore:Lcom/xiaomi/renderengine/gl/EglCore;

    invoke-direct {p2, p0, p1, v0}, Lcom/android/camera2/compat/theme/custom/cv/EffectItemAdapterCV$EffectRealtimeItemHolderCV;-><init>(Lcom/android/camera2/compat/theme/custom/cv/EffectItemAdapterCV;Landroid/view/View;Lcom/xiaomi/renderengine/gl/EglCore;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d004b

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/android/camera2/compat/theme/custom/cv/EffectItemAdapterCV$EffectStillItemHolderCV;

    invoke-direct {p2, p0, p1}, Lcom/android/camera2/compat/theme/custom/cv/EffectItemAdapterCV$EffectStillItemHolderCV;-><init>(Lcom/android/camera2/compat/theme/custom/cv/EffectItemAdapterCV;Landroid/view/View;)V

    :goto_0
    iget-object p0, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->handleListItemTouch(Landroid/view/View;)V

    return-object p2
.end method
