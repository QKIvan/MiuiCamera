.class public Lcom/android/camera2/compat/theme/common/MiThemeShutterSoundBase;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/camera2/compat/theme/common/MiThemeShutterSoundIf;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadAvailableSounds()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/customization/ShutterSound;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/android/camera/customization/ShutterSound;

    const v1, 0x7f120343

    const-string v2, "default"

    const v3, 0x7f080c3b

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/customization/ShutterSound;-><init>(ILjava/lang/String;I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/camera/customization/ShutterSound;

    const v1, 0x7f120342

    const-string v2, "art"

    const v3, 0x7f080c3a

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/customization/ShutterSound;-><init>(ILjava/lang/String;I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/camera/customization/ShutterSound;

    const v1, 0x7f120345

    const-string v2, "old"

    const v3, 0x7f080c3e

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/customization/ShutterSound;-><init>(ILjava/lang/String;I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/camera/customization/ShutterSound;

    const v1, 0x7f120344

    const-string v2, "modern"

    const v3, 0x7f080c3d

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/customization/ShutterSound;-><init>(ILjava/lang/String;I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public loadFromSomewhere(IILandroid/media/SoundPool;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "current",
            "which",
            "pool"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/customization/ShutterSound;->getInstance()Lcom/android/camera/customization/ShutterSound;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/customization/ShutterSound;->getsAvailableSounds()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/customization/ShutterSound;

    invoke-virtual {p0, p2}, Lcom/android/camera/customization/ShutterSound;->soundPath(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p3}, Lcom/android/camera/customization/ShutterSound;->loadFromAsset(Ljava/lang/String;Landroid/media/SoundPool;)I

    move-result p0

    return p0
.end method
