.class public Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mode/VideoModuleDeviceParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private is60FPSSupported:Z

.field private is8KCamcorder:Z

.field private isEisOn:Z

.field private mActualId:I

.field private mBogusId:I

.field private mCapabilities:Lcom/android/camera2/CameraCapabilities;

.field private mModuleIndex:I

.field private mQuality:I

.field private needChooseVideoBeauty:Z

.field private needDisableEISAndOIS:Z


# direct methods
.method public constructor <init>(IIILcom/android/camera2/CameraCapabilities;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "moduleIndex",
            "bogusId",
            "actualId",
            "caps"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;->mModuleIndex:I

    iput p2, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;->mBogusId:I

    iput p3, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;->mActualId:I

    iput-object p4, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/camera/features/mode/VideoModuleDeviceParam;
    .locals 2

    new-instance v0, Lcom/android/camera/features/mode/VideoModuleDeviceParam;

    invoke-direct {v0}, Lcom/android/camera/features/mode/VideoModuleDeviceParam;-><init>()V

    iget v1, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;->mActualId:I

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mode/ModuleDeviceParam;->setActualId(I)V

    iget v1, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;->mBogusId:I

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mode/ModuleDeviceParam;->setBogusId(I)V

    iget v1, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;->mModuleIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mode/ModuleDeviceParam;->setModuleIndex(I)V

    iget-object v1, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mode/ModuleDeviceParam;->setCapabilities(Lcom/android/camera2/CameraCapabilities;)V

    iget-boolean v1, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;->isEisOn:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mode/VideoModuleDeviceParam;->setEisOn(Z)V

    iget-boolean v1, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;->is8KCamcorder:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mode/VideoModuleDeviceParam;->setIs8KCamcorder(Z)V

    iget-boolean v1, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;->is60FPSSupported:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mode/VideoModuleDeviceParam;->setIs60FPSSupported(Z)V

    iget-boolean v1, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;->needChooseVideoBeauty:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mode/VideoModuleDeviceParam;->setNeedChooseVideoBeauty(Z)V

    iget-boolean v1, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;->needDisableEISAndOIS:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mode/VideoModuleDeviceParam;->setNeedDisableEISAndOIS(Z)V

    iget p0, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;->mQuality:I

    invoke-virtual {v0, p0}, Lcom/android/camera/features/mode/VideoModuleDeviceParam;->setQuality(I)V

    return-object v0
.end method

.method public setEisOn(Z)Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eisOn"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;->isEisOn:Z

    return-object p0
.end method

.method public setIs60FPSSupported(Z)Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is60FPSSupported"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;->is60FPSSupported:Z

    return-object p0
.end method

.method public setIs8KCamcorder(Z)Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is8KCamcorder"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;->is8KCamcorder:Z

    return-object p0
.end method

.method public setNeedChooseVideoBeauty(Z)Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "needChooseVideoBeauty"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;->needChooseVideoBeauty:Z

    return-object p0
.end method

.method public setNeedDisableEISAndOIS(Z)Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "needDisableEISAndOIS"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;->needDisableEISAndOIS:Z

    return-object p0
.end method

.method public setQuality(I)Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "quality"
        }
    .end annotation

    iput p1, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;->mQuality:I

    return-object p0
.end method
