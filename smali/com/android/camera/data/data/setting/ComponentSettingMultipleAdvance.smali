.class public Lcom/android/camera/data/data/setting/ComponentSettingMultipleAdvance;
.super Lcom/android/camera/data/data/ComponentMultiple;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/DataItemBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataItemBase"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lcom/android/camera/data/data/DataItemBase;",
            ">(TD;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentMultiple;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    return-void
.end method


# virtual methods
.method public getDisplayTitleString()I
    .locals 0

    const p0, 0x7f120264

    return p0
.end method

.method public initTypeElements(Landroid/content/Context;ILcom/android/camera2/CameraCapabilities;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "currentMode",
            "p",
            "cameraFacing"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/data/data/setting/ComponentSettingMultipleAdvance;->getDisplayTitleString()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/16 p4, 0xa2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, p4, :cond_0

    const/16 p4, 0xb7

    if-eq p2, p4, :cond_0

    new-instance p2, Lcom/android/camera/data/data/TypeItem;

    const p4, 0x7f120841

    const v2, 0x7f12083a

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "pref_camera_volumekey_function_key"

    invoke-direct {p2, p4, p3, v2, p1}, Lcom/android/camera/data/data/TypeItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const p1, 0x7f03002d

    invoke-virtual {p2, p1}, Lcom/android/camera/data/data/TypeItem;->setEntryArrayRes(I)Lcom/android/camera/data/data/TypeItem;

    move-result-object p1

    const p3, 0x7f03002e

    invoke-virtual {p1, p3}, Lcom/android/camera/data/data/TypeItem;->setValueArrayRes(I)Lcom/android/camera/data/data/TypeItem;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    new-array p1, v1, [Lcom/android/camera/data/data/TypeItem;

    aput-object p2, p1, v0

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/ComponentMultiple;->insert([Lcom/android/camera/data/data/TypeItem;)V

    return-void
.end method
