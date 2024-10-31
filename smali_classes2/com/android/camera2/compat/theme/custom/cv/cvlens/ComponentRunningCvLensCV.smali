.class public Lcom/android/camera2/compat/theme/custom/cv/cvlens/ComponentRunningCvLensCV;
.super Lcom/android/camera/data/data/runing/ComponentRunningCvLens;


# instance fields
.field private mCapabilities:Lcom/android/camera2/CameraCapabilities;

.field private mTotalDataItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataItemRunning"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningCvLens;-><init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera2/compat/theme/custom/cv/cvlens/ComponentRunningCvLensCV;->mTotalDataItems:Ljava/util/List;

    new-instance v7, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationPanel()Lcom/android/camera2/compat/theme/common/MiThemeOperationPanelInterface;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080214

    invoke-interface {v0, v1, v2}, Lcom/android/camera2/compat/theme/common/MiThemeOperationPanelInterface;->getModeDrawableRes(Landroid/content/Context;I)I

    move-result v2

    const-string v1, "0"

    const v3, 0x7f080621

    const/4 v4, -0x1

    const/4 v5, 0x0

    const v6, 0x7f120ac5

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/camera2/compat/theme/custom/cv/cvlens/ComponentRunningCvLensCV;->getCvLensConfig()[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x1

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v5, "4"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x3

    goto :goto_1

    :pswitch_1
    const-string v5, "3"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    goto :goto_1

    :pswitch_2
    const-string v5, "2"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move v4, v6

    goto :goto_1

    :pswitch_3
    const-string v5, "1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    move v4, v1

    :goto_1
    const v3, 0x7f120356

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_2

    :pswitch_4
    iget-object v4, p0, Lcom/android/camera2/compat/theme/custom/cv/cvlens/ComponentRunningCvLensCV;->mTotalDataItems:Ljava/util/List;

    new-instance v5, Lcom/android/camera/data/data/ComponentDataItem;

    const v9, 0x7f0803a7

    const v10, 0x7f080621

    const v11, 0x7f12035b

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v6, v6, [Ljava/lang/Object;

    const/16 v7, 0x4b

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const v13, 0x7f12035b

    const-string v8, "4"

    move-object v7, v5

    invoke-direct/range {v7 .. v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_5
    iget-object v4, p0, Lcom/android/camera2/compat/theme/custom/cv/cvlens/ComponentRunningCvLensCV;->mTotalDataItems:Ljava/util/List;

    new-instance v5, Lcom/android/camera/data/data/ComponentDataItem;

    const v9, 0x7f0803a3

    const v10, 0x7f080621

    const v11, 0x7f120359

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v6, v6, [Ljava/lang/Object;

    const/16 v7, 0x23

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const v13, 0x7f120359

    const-string v8, "3"

    move-object v7, v5

    invoke-direct/range {v7 .. v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_6
    iget-object v3, p0, Lcom/android/camera2/compat/theme/custom/cv/cvlens/ComponentRunningCvLensCV;->mTotalDataItems:Ljava/util/List;

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v9, 0x7f0803a8

    const v10, 0x7f080621

    const v11, 0x7f12035d

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f120358

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    const/16 v7, 0x5a

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const v13, 0x7f12035d

    const-string v8, "2"

    move-object v7, v4

    invoke-direct/range {v7 .. v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_7
    iget-object v3, p0, Lcom/android/camera2/compat/theme/custom/cv/cvlens/ComponentRunningCvLensCV;->mTotalDataItems:Ljava/util/List;

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v9, 0x7f0803a5

    const v10, 0x7f080621

    const v11, 0x7f12035c

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f120357

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    const/16 v7, 0x32

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const v13, 0x7f12035c

    const-string v8, "1"

    move-object v7, v4

    invoke-direct/range {v7 .. v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private getCvLensConfig()[Ljava/lang/String;
    .locals 5

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getCvLensVersion()I

    move-result v0

    const-string v1, "2"

    const-string v2, "1"

    const-string v3, "3"

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    const-string p0, "4"

    filled-new-array {v3, v2, p0, v1}, [Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCvLensVersion()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    filled-new-array {v3, v2, v1}, [Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public checkValueValid(ILjava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mode",
            "value"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera2/compat/theme/custom/cv/cvlens/ComponentRunningCvLensCV;->getItems()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object p1, p1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentMode"
        }
    .end annotation

    const-string p0, "0"

    return-object p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const p0, 0x7f12035e

    return p0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera2/compat/theme/custom/cv/cvlens/ComponentRunningCvLensCV;->initItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    const-string p0, "pref_portrait_cv_lens"

    return-object p0
.end method

.method public initItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/camera2/compat/theme/custom/cv/cvlens/ComponentRunningCvLensCV;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera2/compat/theme/custom/cv/cvlens/ComponentRunningCvLensCV;->mTotalDataItems:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isSwitchOn()Z
    .locals 1

    const/16 v0, 0xab

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public reInit(Lcom/android/camera2/CameraCapabilities;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "moduleIndex",
            "cameraId"
        }
    .end annotation

    const/16 v0, 0xab

    if-ne p2, v0, :cond_2

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportCvLensDevice()Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    iput-object p1, p0, Lcom/android/camera2/compat/theme/custom/cv/cvlens/ComponentRunningCvLensCV;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/compat/theme/custom/cv/cvlens/ComponentRunningCvLensCV;->initItems()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    :cond_2
    :goto_0
    return-void
.end method
