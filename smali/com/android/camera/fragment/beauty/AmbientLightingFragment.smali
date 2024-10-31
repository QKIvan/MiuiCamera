.class public Lcom/android/camera/fragment/beauty/AmbientLightingFragment;
.super Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;

# interfaces
.implements Lcom/android/camera/fragment/beauty/IBeautyMutex;


# instance fields
.field private mCurrentBeautyType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$initOnItemClickListener$1(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/AmbientLightingFragment;->mCurrentBeautyType:Ljava/lang/String;

    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->impl()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO0OOO00/OooO0O0;->o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO0OOO00/OooO0O0;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic lambda$null$0(Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "p"
        }
    .end annotation

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->updateBeautyMutex()V

    return-void
.end method


# virtual methods
.method public synthetic OooO0O0(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/camera/fragment/beauty/AmbientLightingFragment;->lambda$initOnItemClickListener$1(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public getBeautyType()Ljava/lang/String;
    .locals 0

    const-string p0, "15"

    return-object p0
.end method

.method public getMutexArray()[Ljava/lang/String;
    .locals 1

    const-string p0, "13"

    const-string v0, "7"

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getShineType()Ljava/lang/String;
    .locals 0

    const-string p0, "15"

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

    iget-object p1, p0, Lcom/android/camera/fragment/beauty/AmbientLightingFragment;->mCurrentBeautyType:Ljava/lang/String;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->getActiveModuleIndex()I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->getAmbientLightingType(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/AmbientLightingFragment;->mCurrentBeautyType:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/AmbientLightingFragment;->mCurrentBeautyType:Ljava/lang/String;

    const-string/jumbo v0, "pref_ambient_lighting_none"

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    iput-object v0, p0, Lcom/android/camera/fragment/beauty/AmbientLightingFragment;->mCurrentBeautyType:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iput v0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mSelectedPosition:I

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;->setSelectedPosition(I)V

    iget p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mSelectedPosition:I

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->notifyItemChanged(II)V

    :cond_2
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/AmbientLightingFragment;->mCurrentBeautyType:Ljava/lang/String;

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->getActiveModuleIndex()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->setAmbientLightingType(Ljava/lang/String;I)V

    const/4 p0, 0x1

    invoke-static {v0, p0}, Lcom/android/camera/fragment/beauty/ShineHelper;->onAmbientLightChanged(ZZ)V

    return-void
.end method

.method public initOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    new-instance v0, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO0OOO00/OooO00o;

    invoke-direct {v0, p0}, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO0OOO00/OooO00o;-><init>(Lcom/android/camera/fragment/beauty/AmbientLightingFragment;)V

    return-object v0
.end method

.method public isMutexOther()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/AmbientLightingFragment;->mCurrentBeautyType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/AmbientLightingFragment;->mCurrentBeautyType:Ljava/lang/String;

    const-string/jumbo v0, "pref_ambient_lighting_none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
