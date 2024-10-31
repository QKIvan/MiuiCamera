.class public Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;
.super Lcom/android/camera/data/data/ComponentData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/data/config/ComponentRunningUltraPixel$UltraPixelSupport;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ComponentRunningUltraPixel"

.field public static final ULTRA_PIXEL_OFF:Ljava/lang/String; = "OFF"

.field public static final ULTRA_PIXEL_ON_REAR_108M:Ljava/lang/String; = "REAR_0x3"

.field public static final ULTRA_PIXEL_ON_REAR_48M:Ljava/lang/String; = "REAR_0x2"

.field public static final ULTRA_PIXEL_ON_REAR_50M:Ljava/lang/String; = "REAR_0x5"

.field public static final ULTRA_PIXEL_ON_REAR_64M:Ljava/lang/String; = "REAR_0x1"

.field public static final ULTRA_PIXEL_ON_REAR_AI_100M:Ljava/lang/String; = "REAR_0x6"

.field public static final ULTRA_PIXEL_ON_REAR_AI_108M:Ljava/lang/String; = "REAR_0x4"

.field public static final ULTRA_PIXEL_ON_REAR_XXXM:Ljava/lang/String; = "REAR_0x7"


# instance fields
.field private mCapabilities:Lcom/android/camera2/CameraCapabilities;

.field private mCloseTipString:Ljava/lang/String;

.field private mCurrentMode:I

.field private mDisplayTitleString:I

.field private mIsClosed:Landroid/util/SparseBooleanArray;

.field private mMenuDrawable:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private mMenuString:Ljava/lang/String;

.field private mOpenTipString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataItemRunning"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mOpenTipString:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mCloseTipString:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mMenuString:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mMenuDrawable:I

    return-void
.end method

.method private add108M(Ljava/util/List;)V
    .locals 9
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportUltraPixel108M"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "items"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const v4, 0x7f120a29

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const v5, 0x7f120895

    invoke-virtual {v0, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v7, 0x7f0805d0

    const-string v8, "OFF"

    invoke-direct {v1, v7, v7, v3, v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "REAR_0x3"

    invoke-direct {v1, v7, v7, v0, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v2}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->initUltraPixelResource(Ljava/lang/String;)V

    return-void
.end method

.method private add48M(Ljava/util/List;)V
    .locals 9
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportUltraPixel48M"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "items"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const v4, 0x7f120a2b

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const v5, 0x7f120895

    invoke-virtual {v0, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v7, 0x7f080464

    const-string v8, "OFF"

    invoke-direct {v1, v7, v7, v3, v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "REAR_0x2"

    invoke-direct {v1, v7, v7, v0, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v2}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->initUltraPixelResource(Ljava/lang/String;)V

    return-void
.end method

.method private add50M(Ljava/util/List;)V
    .locals 9
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportUltraPixel50M"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "items"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const v4, 0x7f120a2c

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const v5, 0x7f120895

    invoke-virtual {v0, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v7, 0x7f0805d3

    const-string v8, "OFF"

    invoke-direct {v1, v7, v7, v3, v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "REAR_0x5"

    invoke-direct {v1, v7, v7, v0, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v2}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->initUltraPixelResource(Ljava/lang/String;)V

    return-void
.end method

.method private add64M(Ljava/util/List;)V
    .locals 9
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportUltraPixel64M"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "items"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const v4, 0x7f120a2d

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const v5, 0x7f120895

    invoke-virtual {v0, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v7, 0x7f080467

    const-string v8, "OFF"

    invoke-direct {v1, v7, v7, v3, v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "REAR_0x1"

    invoke-direct {v1, v7, v7, v0, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v2}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->initUltraPixelResource(Ljava/lang/String;)V

    return-void
.end method

.method private addAI100M(Ljava/util/List;)V
    .locals 9
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportAI108M"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "items"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const v4, 0x7f120a28

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const v5, 0x7f120894

    invoke-virtual {v0, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v7, 0x7f0805cd

    const-string v8, "OFF"

    invoke-direct {v1, v7, v7, v3, v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "REAR_0x6"

    invoke-direct {v1, v7, v7, v0, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v2}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->initUltraPixelResource(Ljava/lang/String;)V

    return-void
.end method

.method private addAI108M(Ljava/util/List;)V
    .locals 9
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportAI108M"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "items"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const v4, 0x7f120a29

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const v5, 0x7f120895

    invoke-virtual {v0, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v7, 0x7f0805d0

    const-string v8, "OFF"

    invoke-direct {v1, v7, v7, v3, v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "REAR_0x3"

    invoke-direct {v1, v7, v7, v0, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "REAR_0x4"

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->initUltraPixelResource(Ljava/lang/String;)V

    return-void
.end method

.method private addXXXM(Ljava/util/List;)V
    .locals 9
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportPixelModeCustomSize"
        type = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "items"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const v4, 0x7f120a35

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const v5, 0x7f120895

    invoke-virtual {v0, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v7, 0x7f0805d6

    const-string v8, "OFF"

    invoke-direct {v1, v7, v7, v3, v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "REAR_0x7"

    invoke-direct {v1, v7, v7, v0, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v2}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->initUltraPixelResource(Ljava/lang/String;)V

    return-void
.end method

.method private createItems(IILcom/android/camera2/CameraCapabilities;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "currentMode",
            "cameraId",
            "p"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/android/camera2/CameraCapabilities;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    iput p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mCurrentMode:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p3, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0xa7

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x6

    if-eq p1, v1, :cond_a

    const/16 v1, 0xaf

    if-eq p1, v1, :cond_1

    return-object v0

    :cond_1
    if-nez p2, :cond_10

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p1

    invoke-virtual {p1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0000OoO()I

    move-result p1

    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportPixelModeCustomSize(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getXXXMRunning()Z

    move-result p2

    if-eqz p2, :cond_2

    move p1, v7

    :cond_2
    if-le p1, v6, :cond_10

    if-eq p1, v5, :cond_8

    if-eq p1, v4, :cond_7

    if-eq p1, v3, :cond_6

    if-eq p1, v2, :cond_4

    if-eq p1, v7, :cond_3

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->addXXXM(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_4
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p1

    invoke-virtual {p1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0OOOO()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getAi108Running()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0, v0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->addAI100M(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_5
    invoke-direct {p0, v0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->add50M(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0, v0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->add108M(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0, v0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->add64M(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_8
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p1

    invoke-virtual {p1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0OOOO()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getAi108Running()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-direct {p0, v0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->addAI108M(Ljava/util/List;)V

    goto :goto_0

    :cond_9
    invoke-direct {p0, v0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->add48M(Ljava/util/List;)V

    goto :goto_0

    :cond_a
    if-nez p2, :cond_10

    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->getRearUltraPixelPhotographyIndex(Lcom/android/camera2/CameraCapabilities;)I

    move-result p1

    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->getUltraPixelPhotographyRearSize(Lcom/android/camera2/CameraCapabilities;)Landroid/util/Size;

    move-result-object p2

    if-le p1, v6, :cond_10

    invoke-static {p3, p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isUltraPixelPhotographySupported(Lcom/android/camera2/CameraCapabilities;Landroid/util/Size;)Z

    move-result p2

    if-eqz p2, :cond_10

    if-eq p1, v5, :cond_f

    if-eq p1, v4, :cond_e

    if-eq p1, v3, :cond_d

    if-eq p1, v2, :cond_c

    if-eq p1, v7, :cond_b

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown rearPixel index: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "ComponentRunningUltraPixel"

    invoke-static {p2, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_b
    invoke-direct {p0, v0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->addXXXM(Ljava/util/List;)V

    goto :goto_0

    :cond_c
    invoke-direct {p0, v0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->add50M(Ljava/util/List;)V

    goto :goto_0

    :cond_d
    invoke-direct {p0, v0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->add108M(Ljava/util/List;)V

    goto :goto_0

    :cond_e
    invoke-direct {p0, v0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->add64M(Ljava/util/List;)V

    goto :goto_0

    :cond_f
    invoke-direct {p0, v0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->add48M(Ljava/util/List;)V

    :cond_10
    :goto_0
    return-object v0
.end method

.method private initUltraPixelResource(Ljava/lang/String;)V
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/android/camera/data/data/config/ComponentRunningUltraPixel$UltraPixelSupport;
        .end annotation
    .end param
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pixel"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "REAR_0x7"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x6

    goto :goto_0

    :pswitch_1
    const-string v1, "REAR_0x6"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x5

    goto :goto_0

    :pswitch_2
    const-string v1, "REAR_0x5"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x4

    goto :goto_0

    :pswitch_3
    const-string v1, "REAR_0x4"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x3

    goto :goto_0

    :pswitch_4
    const-string v1, "REAR_0x3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x2

    goto :goto_0

    :pswitch_5
    const-string v1, "REAR_0x2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    move v4, v2

    goto :goto_0

    :pswitch_6
    const-string v1, "REAR_0x1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    move v4, v3

    :goto_0
    const v1, 0x7f1205c5

    const v5, 0x7f0805d0

    const v6, 0x7f120894

    const v7, 0x7f120a26

    const v8, 0x7f120a27

    const v9, 0x7f120895

    const v10, 0x7f120a30

    const v11, 0x7f120a31

    packed-switch v4, :pswitch_data_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown ultra pixel size: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "ComponentRunningUltraPixel"

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_7
    const p1, 0x7f0805d6

    iput p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mMenuDrawable:I

    new-array p1, v2, [Ljava/lang/Object;

    const v1, 0x7f120a35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, p1, v3

    invoke-virtual {v0, v11, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mOpenTipString:Ljava/lang/String;

    new-array p1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, p1, v3

    invoke-virtual {v0, v10, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mCloseTipString:Ljava/lang/String;

    new-array p1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v3

    invoke-virtual {v0, v9, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mMenuString:Ljava/lang/String;

    const p1, 0x7f1205c9

    iput p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mDisplayTitleString:I

    goto/16 :goto_1

    :pswitch_8
    const p1, 0x7f0805cd

    iput p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mMenuDrawable:I

    new-array p1, v2, [Ljava/lang/Object;

    const v1, 0x7f120a28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, p1, v3

    invoke-virtual {v0, v8, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mOpenTipString:Ljava/lang/String;

    new-array p1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, p1, v3

    invoke-virtual {v0, v7, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mCloseTipString:Ljava/lang/String;

    new-array p1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v3

    invoke-virtual {v0, v6, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mMenuString:Ljava/lang/String;

    iput v1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mDisplayTitleString:I

    goto/16 :goto_1

    :pswitch_9
    const p1, 0x7f0805d3

    iput p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mMenuDrawable:I

    new-array p1, v2, [Ljava/lang/Object;

    const v1, 0x7f120a2c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, p1, v3

    invoke-virtual {v0, v11, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mOpenTipString:Ljava/lang/String;

    new-array p1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, p1, v3

    invoke-virtual {v0, v10, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mCloseTipString:Ljava/lang/String;

    new-array p1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v3

    invoke-virtual {v0, v9, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mMenuString:Ljava/lang/String;

    const p1, 0x7f1205c7

    iput p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mDisplayTitleString:I

    goto/16 :goto_1

    :pswitch_a
    iput v5, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mMenuDrawable:I

    new-array p1, v2, [Ljava/lang/Object;

    const v4, 0x7f12013f

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p1, v3

    invoke-virtual {v0, v8, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mOpenTipString:Ljava/lang/String;

    new-array p1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p1, v3

    invoke-virtual {v0, v7, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mCloseTipString:Ljava/lang/String;

    new-array p1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v3

    invoke-virtual {v0, v6, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mMenuString:Ljava/lang/String;

    iput v1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mDisplayTitleString:I

    goto/16 :goto_1

    :pswitch_b
    iput v5, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mMenuDrawable:I

    new-array p1, v2, [Ljava/lang/Object;

    const v4, 0x7f120a29

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p1, v3

    invoke-virtual {v0, v11, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mOpenTipString:Ljava/lang/String;

    new-array p1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p1, v3

    invoke-virtual {v0, v10, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mCloseTipString:Ljava/lang/String;

    new-array p1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v3

    invoke-virtual {v0, v9, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mMenuString:Ljava/lang/String;

    iput v1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mDisplayTitleString:I

    goto :goto_1

    :pswitch_c
    const p1, 0x7f080464

    iput p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mMenuDrawable:I

    new-array p1, v2, [Ljava/lang/Object;

    const v1, 0x7f120a2b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, p1, v3

    invoke-virtual {v0, v11, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mOpenTipString:Ljava/lang/String;

    new-array p1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, p1, v3

    invoke-virtual {v0, v10, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mCloseTipString:Ljava/lang/String;

    new-array p1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v3

    invoke-virtual {v0, v9, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mMenuString:Ljava/lang/String;

    const p1, 0x7f1205c6

    iput p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mDisplayTitleString:I

    goto :goto_1

    :pswitch_d
    const p1, 0x7f080467

    iput p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mMenuDrawable:I

    new-array p1, v2, [Ljava/lang/Object;

    const v1, 0x7f120a2d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, p1, v3

    invoke-virtual {v0, v11, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mOpenTipString:Ljava/lang/String;

    new-array p1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, p1, v3

    invoke-virtual {v0, v10, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mCloseTipString:Ljava/lang/String;

    new-array p1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v3

    invoke-virtual {v0, v9, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mMenuString:Ljava/lang/String;

    const p1, 0x7f1205c8

    iput p1, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mDisplayTitleString:I

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch -0x4372e32
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public getCurrentSupportUltraPixel()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/android/camera/data/data/config/ComponentRunningUltraPixel$UltraPixelSupport;
    .end annotation

    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object p0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

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

    const-string p0, "OFF"

    return-object p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    iget p0, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mDisplayTitleString:I

    return p0
.end method

.method public getItems()Ljava/util/List;
    .locals 0
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

    const-string/jumbo p0, "pref_ultra_pixel"

    return-object p0
.end method

.method public getMenuDrawable()I
    .locals 0
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    iget p0, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mMenuDrawable:I

    invoke-static {p0}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result p0

    return p0
.end method

.method public getNoSupportZoomTip()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getRearUltraPixelPhotographyIndex(Lcom/android/camera2/CameraCapabilities;)I

    move-result p0

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v1

    invoke-virtual {v1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0OOOO()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getAi108Running()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x3

    :cond_0
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const v3, 0x7f120a2b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const v4, 0x7f120a36

    invoke-virtual {v0, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array p0, v1, [Ljava/lang/Object;

    const v1, 0x7f120a35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v5

    invoke-virtual {v0, v4, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_1
    new-array p0, v1, [Ljava/lang/Object;

    const v1, 0x7f120a28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v5

    invoke-virtual {v0, v4, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_2
    new-array p0, v1, [Ljava/lang/Object;

    const v1, 0x7f120a2c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v5

    invoke-virtual {v0, v4, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_3
    new-array p0, v1, [Ljava/lang/Object;

    const v1, 0x7f120a29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v5

    invoke-virtual {v0, v4, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_4
    new-array p0, v1, [Ljava/lang/Object;

    const v1, 0x7f120a2d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v5

    invoke-virtual {v0, v4, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_5
    new-array p0, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v5

    invoke-virtual {v0, v4, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getUltraPixelCloseTip()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mCloseTipString:Ljava/lang/String;

    return-object p0
.end method

.method public getUltraPixelIcon()I
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getRearUltraPixelPhotographyIndex(Lcom/android/camera2/CameraCapabilities;)I

    move-result v0

    iget-object p0, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportPixelModeCustomSize(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0804cb

    return p0

    :cond_0
    const/4 p0, 0x2

    if-eq v0, p0, :cond_3

    const/4 p0, 0x3

    if-eq v0, p0, :cond_2

    const/4 p0, 0x4

    if-eq v0, p0, :cond_1

    const p0, 0x7f080496

    goto :goto_0

    :cond_1
    const p0, 0x7f080497

    goto :goto_0

    :cond_2
    const p0, 0x7f080494

    goto :goto_0

    :cond_3
    const p0, 0x7f080499

    :goto_0
    return p0
.end method

.method public getUltraPixelOpenTip()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mOpenTipString:Ljava/lang/String;

    return-object p0
.end method

.method public getUltraPixelSwitchTipsString()[Ljava/lang/String;
    .locals 9
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getRearUltraPixelPhotographyIndex(Lcom/android/camera2/CameraCapabilities;)I

    move-result p0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const v5, 0x7f120a2b

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v4, v7

    const v6, 0x7f1200d6

    invoke-virtual {v0, v6, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    const v8, 0x7f1200d7

    invoke-virtual {v0, v8, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-array v2, v1, [Ljava/lang/String;

    new-array p0, v3, [Ljava/lang/Object;

    const v1, 0x7f120a35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, p0, v7

    invoke-virtual {v0, v6, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v7

    new-array p0, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v7

    invoke-virtual {v0, v8, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    goto/16 :goto_0

    :pswitch_1
    new-array v2, v1, [Ljava/lang/String;

    new-array p0, v3, [Ljava/lang/Object;

    const v1, 0x7f120a28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, p0, v7

    invoke-virtual {v0, v6, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v7

    new-array p0, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v7

    invoke-virtual {v0, v8, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    goto/16 :goto_0

    :pswitch_2
    new-array v2, v1, [Ljava/lang/String;

    new-array p0, v3, [Ljava/lang/Object;

    const v1, 0x7f120a2c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, p0, v7

    invoke-virtual {v0, v6, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v7

    new-array p0, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v7

    invoke-virtual {v0, v8, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    goto :goto_0

    :pswitch_3
    new-array v2, v1, [Ljava/lang/String;

    new-array p0, v3, [Ljava/lang/Object;

    const v1, 0x7f120a29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, p0, v7

    invoke-virtual {v0, v6, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v7

    new-array p0, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v7

    invoke-virtual {v0, v8, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    goto :goto_0

    :pswitch_4
    new-array v2, v1, [Ljava/lang/String;

    new-array p0, v3, [Ljava/lang/Object;

    const v1, 0x7f120a2d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, p0, v7

    invoke-virtual {v0, v6, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v7

    new-array p0, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v7

    invoke-virtual {v0, v8, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    goto :goto_0

    :pswitch_5
    new-array v2, v1, [Ljava/lang/String;

    new-array p0, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v7

    invoke-virtual {v0, v6, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v7

    new-array p0, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v7

    invoke-virtual {v0, v8, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    :goto_0
    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getUltraPixelTopMenuResources()[I
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object p0, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getRearUltraPixelPhotographyIndex(Lcom/android/camera2/CameraCapabilities;)I

    move-result p0

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    goto :goto_0

    :pswitch_1
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    goto :goto_0

    :pswitch_2
    new-array v1, v0, [I

    fill-array-data v1, :array_3

    goto :goto_0

    :pswitch_3
    new-array v1, v0, [I

    fill-array-data v1, :array_4

    goto :goto_0

    :pswitch_4
    new-array v1, v0, [I

    fill-array-data v1, :array_5

    goto :goto_0

    :pswitch_5
    new-array v1, v0, [I

    fill-array-data v1, :array_6

    :goto_0
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x7f080464
        0x7f080466
    .end array-data

    :array_1
    .array-data 4
        0x7f0805d6
        0x7f0805d8
    .end array-data

    :array_2
    .array-data 4
        0x7f0805cd
        0x7f0805cf
    .end array-data

    :array_3
    .array-data 4
        0x7f0805d3
        0x7f0805d5
    .end array-data

    :array_4
    .array-data 4
        0x7f0805d0
        0x7f0805d2
    .end array-data

    :array_5
    .array-data 4
        0x7f080467
        0x7f080469
    .end array-data

    :array_6
    .array-data 4
        0x7f080464
        0x7f080466
    .end array-data
.end method

.method public isClosed()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mIsClosed:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mCurrentMode:I

    invoke-virtual {v0, p0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0
.end method

.method public isRear108MPSwitchOn()Z
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportUltraPixel108M"
        type = 0x0
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v0, 0xa0

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "REAR_0x3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isRear48MPSwitchOn()Z
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportUltraPixel48M"
        type = 0x0
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v0, 0xa0

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "REAR_0x2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isRear50MPSwitchOn()Z
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportUltraPixel50M"
        type = 0x0
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v0, 0xa0

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "REAR_0x5"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isRear64MPSwitchOn()Z
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportUltraPixel64M"
        type = 0x0
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v0, 0xa0

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "REAR_0x1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isRearSwitchOn()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->isRear48MPSwitchOn()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->isRear50MPSwitchOn()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->isRear64MPSwitchOn()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->isRear108MPSwitchOn()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->isRearXXXMPSwitchOn()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isRearXXXMPSwitchOn()Z
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportPixelModeCustomSize"
        type = 0x2
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v0, 0xa0

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "REAR_0x7"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isSwitchOn()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v0, 0xa0

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "OFF"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public reInit(IILcom/android/camera2/CameraCapabilities;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "currentMode",
            "cameraId",
            "p"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->createItems(IILcom/android/camera2/CameraCapabilities;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    iput-object p3, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    return-void
.end method

.method public setClosed(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "close"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mIsClosed:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mIsClosed:Landroid/util/SparseBooleanArray;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mIsClosed:Landroid/util/SparseBooleanArray;

    iget p0, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mCurrentMode:I

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method public switchOff()V
    .locals 2

    const/16 v0, 0xa0

    const-string v1, "OFF"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method

.method public switchOn(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/android/camera/data/data/config/ComponentRunningUltraPixel$UltraPixelSupport;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pixel"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->setClosed(Z)V

    const/16 v0, 0xa0

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method

.method public switchOnCurrentSupported(IILcom/android/camera2/CameraCapabilities;)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "currentMode",
            "cameraId",
            "p"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->reInit(IILcom/android/camera2/CameraCapabilities;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    new-array p0, p2, [Ljava/lang/Object;

    const-string p1, "UltraPixel:"

    const-string p2, "CameraCapabilities not supported"

    invoke-static {p1, p2, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->setClosed(Z)V

    const/16 p1, 0xa0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->getCurrentSupportUltraPixel()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method

.method public ultraPixelModuleNameRes()I
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object p0, p0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportPixelModeCustomSize(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f1205c4

    return p0

    :cond_0
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p0

    invoke-virtual {p0}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0OOooO0()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const p0, 0x7f1205c6

    return p0

    :cond_1
    const p0, 0x7f1205c5

    return p0

    :cond_2
    const p0, 0x7f1205c8

    return p0

    :cond_3
    const p0, 0x7f1205c7

    return p0
.end method
