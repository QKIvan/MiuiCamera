.class public Lcom/android/camera/features/mode/ModuleDeviceParam;
.super Ljava/lang/Object;


# instance fields
.field private mActualId:I

.field private mBogusId:I

.field private mCapabilities:Lcom/android/camera2/CameraCapabilities;

.field private mModuleIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActualId()I
    .locals 0

    iget p0, p0, Lcom/android/camera/features/mode/ModuleDeviceParam;->mActualId:I

    return p0
.end method

.method public getBogusId()I
    .locals 0

    iget p0, p0, Lcom/android/camera/features/mode/ModuleDeviceParam;->mBogusId:I

    return p0
.end method

.method public getCapabilities()Lcom/android/camera2/CameraCapabilities;
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object p0, p0, Lcom/android/camera/features/mode/ModuleDeviceParam;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    return-object p0
.end method

.method public getModuleIndex()I
    .locals 0

    iget p0, p0, Lcom/android/camera/features/mode/ModuleDeviceParam;->mModuleIndex:I

    return p0
.end method

.method public isBackCamera()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->getBogusId()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFrontCamera()Z
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->getBogusId()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setActualId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "actualId"
        }
    .end annotation

    iput p1, p0, Lcom/android/camera/features/mode/ModuleDeviceParam;->mActualId:I

    return-void
.end method

.method public setBogusId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bogusId"
        }
    .end annotation

    iput p1, p0, Lcom/android/camera/features/mode/ModuleDeviceParam;->mBogusId:I

    return-void
.end method

.method public setCapabilities(Lcom/android/camera2/CameraCapabilities;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capabilities"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/features/mode/ModuleDeviceParam;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    return-void
.end method

.method public setModuleIndex(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "moduleIndex"
        }
    .end annotation

    iput p1, p0, Lcom/android/camera/features/mode/ModuleDeviceParam;->mModuleIndex:I

    return-void
.end method
