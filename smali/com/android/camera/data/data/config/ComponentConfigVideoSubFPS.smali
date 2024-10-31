.class public Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;
.super Lcom/android/camera/data/data/ComponentData;


# static fields
.field private static ALL_FPS_ITEMS:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final FPS_120:Ljava/lang/String; = "120"

.field public static final FPS_24:Ljava/lang/String; = "24"

.field public static final FPS_30:Ljava/lang/String; = ""

.field public static final FPS_60:Ljava/lang/String; = "60"

.field private static final TAG:Ljava/lang/String; = "ComponentConfigVideoSubFPS"


# instance fields
.field private mForceValue:[Ljava/lang/String;

.field private mParentVideoQuality:Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->ALL_FPS_ITEMS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dataItemConfig",
            "parentVideoQuality"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->mForceValue:[Ljava/lang/String;

    iput-object p2, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->mParentVideoQuality:Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    return-void
.end method

.method private generateItemBySize(IZ)Lcom/android/camera/data/data/ComponentDataItem;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fps",
            "enable"
        }
    .end annotation

    const/16 p0, 0x18

    const/4 v0, 0x0

    if-eq p1, p0, :cond_3

    const/16 p0, 0x1e

    if-eq p1, p0, :cond_2

    const/16 p0, 0x3c

    if-eq p1, p0, :cond_1

    const/16 p0, 0x78

    if-eq p1, p0, :cond_0

    const/4 p0, -0x1

    move-object p1, v0

    goto :goto_1

    :cond_0
    const p0, 0x7f08030b

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f120906

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string p1, "120"

    goto :goto_0

    :cond_1
    const p0, 0x7f08031c

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f12090a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string p1, "60"

    goto :goto_0

    :cond_2
    const p0, 0x7f080311

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f120908

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string p1, ""

    goto :goto_0

    :cond_3
    const p0, 0x7f08030f

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f120907

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string p1, "24"

    :goto_0
    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    :goto_1
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v1, v0, p0, p0, p1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    xor-int/lit8 p0, p2, 0x1

    iput-boolean p0, v1, Lcom/android/camera/data/data/ComponentDataItem;->mIsDisabled:Z

    return-object v1
.end method


# virtual methods
.method public checkValueValid(ILjava/lang/String;)Z
    .locals 1
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

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/camera/data/data/ComponentData;->isContain(Ljava/lang/String;Ljava/util/List;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "checkValueValid: invalid value: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p2, p1, [Ljava/lang/Object;

    const-string v0, "ComponentConfigVideoSubFPS"

    invoke-static {v0, p0, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method public generateFPSItems(Landroid/util/SparseBooleanArray;Lcom/android/camera/data/data/config/ComponentConfigVideoQuality$QualityLimitation;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "booleanArray",
            "usageLimitation",
            "currentSize"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    invoke-static {v4}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->getSubSize(I)I

    move-result v6

    xor-int v7, v6, v4

    if-eq v6, p3, :cond_0

    move v5, v2

    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {p2, v4}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality$QualityLimitation;->inRegion(I)Z

    move-result v4

    if-nez v4, :cond_1

    move v5, v2

    :cond_1
    invoke-virtual {v1, v7, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1, v7, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result p1

    if-ge v2, p1, :cond_4

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->generateItemBySize(IZ)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iput-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-void
.end method

.method public getComponentValue(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->mParentVideoQuality:Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->getComponentValueDivideFPS(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
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

    const-string p0, ""

    return-object p0
.end method

.method public getDisplayTitleString()I
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public getItems()Ljava/util/List;
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

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

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ComponentConfigVideoSubFPS"

    const-string v2, "List is empty!"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    :goto_0
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

    const-string/jumbo p0, "pref_video_sub_fps_key"

    return-object p0
.end method

.method public setComponentValue(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mode",
            "newValue"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->mParentVideoQuality:Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->setComponentValueDivideFPS(ILjava/lang/String;)V

    return-void
.end method
