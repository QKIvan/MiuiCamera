.class public Lcom/android/camera/features/mode/CameraModuleDeviceParam$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mode/CameraModuleDeviceParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private isImageCaptureIntent:Z

.field private isParallelEnabled:Z

.field private mActualId:I

.field private mBogusId:I

.field private mCapabilities:Lcom/android/camera2/CameraCapabilities;

.field private mModuleIndex:I


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

    iput p1, p0, Lcom/android/camera/features/mode/CameraModuleDeviceParam$Builder;->mModuleIndex:I

    iput p2, p0, Lcom/android/camera/features/mode/CameraModuleDeviceParam$Builder;->mBogusId:I

    iput p3, p0, Lcom/android/camera/features/mode/CameraModuleDeviceParam$Builder;->mActualId:I

    iput-object p4, p0, Lcom/android/camera/features/mode/CameraModuleDeviceParam$Builder;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/camera/features/mode/CameraModuleDeviceParam;
    .locals 2

    new-instance v0, Lcom/android/camera/features/mode/CameraModuleDeviceParam;

    invoke-direct {v0}, Lcom/android/camera/features/mode/CameraModuleDeviceParam;-><init>()V

    iget-boolean v1, p0, Lcom/android/camera/features/mode/CameraModuleDeviceParam$Builder;->isParallelEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mode/CameraModuleDeviceParam;->setParallelEnabled(Z)V

    iget v1, p0, Lcom/android/camera/features/mode/CameraModuleDeviceParam$Builder;->mBogusId:I

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mode/ModuleDeviceParam;->setBogusId(I)V

    iget-boolean v1, p0, Lcom/android/camera/features/mode/CameraModuleDeviceParam$Builder;->isImageCaptureIntent:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mode/CameraModuleDeviceParam;->setImageCaptureIntent(Z)V

    iget-object v1, p0, Lcom/android/camera/features/mode/CameraModuleDeviceParam$Builder;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mode/ModuleDeviceParam;->setCapabilities(Lcom/android/camera2/CameraCapabilities;)V

    iget v1, p0, Lcom/android/camera/features/mode/CameraModuleDeviceParam$Builder;->mActualId:I

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mode/ModuleDeviceParam;->setActualId(I)V

    iget p0, p0, Lcom/android/camera/features/mode/CameraModuleDeviceParam$Builder;->mModuleIndex:I

    invoke-virtual {v0, p0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->setModuleIndex(I)V

    return-object v0
.end method

.method public setImageCaptureIntent(Z)Lcom/android/camera/features/mode/CameraModuleDeviceParam$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageCaptureIntent"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/camera/features/mode/CameraModuleDeviceParam$Builder;->isImageCaptureIntent:Z

    return-object p0
.end method

.method public setParallelEnabled(Z)Lcom/android/camera/features/mode/CameraModuleDeviceParam$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parallelEnabled"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/camera/features/mode/CameraModuleDeviceParam$Builder;->isParallelEnabled:Z

    return-object p0
.end method
