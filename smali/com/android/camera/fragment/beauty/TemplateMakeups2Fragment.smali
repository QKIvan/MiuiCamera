.class public Lcom/android/camera/fragment/beauty/TemplateMakeups2Fragment;
.super Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;

# interfaces
.implements Lcom/android/camera/fragment/beauty/IBeautyTypeUI;
.implements Lcom/android/camera/fragment/beauty/IBeautyMutex;


# instance fields
.field private mCurrentBeautyType:Ljava/lang/String;

.field private mCurrentSubEffectType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;-><init>()V

    return-void
.end method

.method private getMutexLinkBeautyType()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->supportHalJsonBeautyItem(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/camera/fragment/beauty/BeautyJsonData;->getHalJsonBeautyModeScene()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "5"

    return-object p0
.end method

.method private synthetic lambda$initOnItemClickListener$0(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "parent",
            "view",
            "position",
            "id"
        }
    .end annotation

    iget-object p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mItemList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/TypeItem;

    iget-object p1, p1, Lcom/android/camera/data/data/TypeItem;->mKeyOrType:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeups2Fragment;->mCurrentBeautyType:Ljava/lang/String;

    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->updateBeautyMutex()V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic OooO0O0(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/camera/fragment/beauty/TemplateMakeups2Fragment;->lambda$initOnItemClickListener$0(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public getBeautyType()Ljava/lang/String;
    .locals 0
    .annotation build Lcom/android/camera/data/data/runing/ComponentRunningShine$ShineType;
    .end annotation

    const-string p0, "13"

    return-object p0
.end method

.method public getMakeup2SubEffectUI()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/beauty/SubEffectUI;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/camera/fragment/beauty/SubEffectUI;

    invoke-direct {v1}, Lcom/android/camera/fragment/beauty/SubEffectUI;-><init>()V

    const-string/jumbo v2, "sub_makeup"

    iput-object v2, v1, Lcom/android/camera/fragment/beauty/SubEffectUI;->subEffectType:Ljava/lang/String;

    const v3, 0x7f0802e3

    iput v3, v1, Lcom/android/camera/fragment/beauty/SubEffectUI;->iconRes:I

    const v3, 0x7f0802e4

    iput v3, v1, Lcom/android/camera/fragment/beauty/SubEffectUI;->iconShadowRes:I

    iget-object v3, p0, Lcom/android/camera/fragment/beauty/TemplateMakeups2Fragment;->mCurrentBeautyType:Ljava/lang/String;

    if-nez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    :goto_0
    iput-boolean v2, v1, Lcom/android/camera/fragment/beauty/SubEffectUI;->isDefault:Z

    const v2, 0x7f120226

    iput v2, v1, Lcom/android/camera/fragment/beauty/SubEffectUI;->displayNameRes:I

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/fragment/beauty/SubEffectUI;

    invoke-direct {v1}, Lcom/android/camera/fragment/beauty/SubEffectUI;-><init>()V

    const-string/jumbo v2, "sub_filter"

    iput-object v2, v1, Lcom/android/camera/fragment/beauty/SubEffectUI;->subEffectType:Ljava/lang/String;

    const v3, 0x7f0802e1

    iput v3, v1, Lcom/android/camera/fragment/beauty/SubEffectUI;->iconRes:I

    const v3, 0x7f0802e2

    iput v3, v1, Lcom/android/camera/fragment/beauty/SubEffectUI;->iconShadowRes:I

    iget-object p0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeups2Fragment;->mCurrentBeautyType:Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    iput-boolean p0, v1, Lcom/android/camera/fragment/beauty/SubEffectUI;->isDefault:Z

    const p0, 0x7f120225

    iput p0, v1, Lcom/android/camera/fragment/beauty/SubEffectUI;->displayNameRes:I

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getMutexArray()[Ljava/lang/String;
    .locals 4

    const-string p0, "5"

    const-string v0, "FrontTextureCapture"

    const-string v1, "FrontClassicalCapture"

    const-string v2, "15"

    const-string v3, "7"

    filled-new-array {p0, v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getShineType()Ljava/lang/String;
    .locals 0

    const-string p0, "13"

    return-object p0
.end method

.method public getSubEffectType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeups2Fragment;->mCurrentSubEffectType:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string/jumbo p0, "sub_makeup"

    :cond_0
    return-object p0
.end method

.method public handleMutex(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isMutex"
        }
    .end annotation

    iget-object p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iput v0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mSelectedPosition:I

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;->setSelectedPosition(I)V

    iget p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mSelectedPosition:I

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->notifyItemChanged(II)V

    :cond_0
    const-string/jumbo p1, "pref_beautify_makeups_none"

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeups2Fragment;->mCurrentBeautyType:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setBeautyMakeups2Type(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/TemplateMakeups2Fragment;->getMutexLinkBeautyType()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, v0}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->handleMutexSpecifyBeautyType(Ljava/lang/String;Z)V

    :cond_1
    invoke-static {v0}, Lcom/android/camera/fragment/beauty/ShineHelper;->onBeautyChanged(Z)V

    return-void
.end method

.method public initOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    new-instance v0, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO0OOO00/o000oOoO;

    invoke-direct {v0, p0}, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO0OOO00/o000oOoO;-><init>(Lcom/android/camera/fragment/beauty/TemplateMakeups2Fragment;)V

    return-object v0
.end method

.method public isMutexOther()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeups2Fragment;->mCurrentBeautyType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeups2Fragment;->mCurrentBeautyType:Ljava/lang/String;

    const-string/jumbo v0, "pref_beautify_makeups_none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public oneKeyCloseMutex()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "pref_beautify_makeups_none"

    iput-object v1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeups2Fragment;->mCurrentBeautyType:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mSelectedPosition:I

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;->setSelectedPosition(I)V

    iget v0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mSelectedPosition:I

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->notifyItemChanged(II)V

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setBeautyMakeups2Type(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/camera/fragment/beauty/ShineHelper;->onBeautyChanged(Z)V

    return-void
.end method

.method public selectBeautyItem()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeups2Fragment;->mCurrentBeautyType:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string/jumbo p0, "pref_beautify_makeups_none"

    :cond_0
    return-object p0
.end method

.method public setSubEffectType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subEffectType"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeups2Fragment;->mCurrentSubEffectType:Ljava/lang/String;

    return-void
.end method
