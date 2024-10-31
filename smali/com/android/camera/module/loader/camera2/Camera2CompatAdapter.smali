.class public abstract Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/camera/module/loader/camera2/Camera2Compat;


# static fields
.field public static final INVALID_CAMERA_ID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Camera2CompatAdapter"

.field public static final TELE_CAMERA_ID:I = 0x14


# instance fields
.field public volatile isCapabilitiesInitFinished:Z

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field public volatile mCapabilities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/camera2/CameraCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field public volatile mCurrentOpenedCameraId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->mCurrentOpenedCameraId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->mCapabilities:Landroid/util/SparseArray;

    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->isCapabilitiesInitFinished:Z

    return-void
.end method


# virtual methods
.method public getCapabilities()Landroid/util/SparseArray;
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/camera2/CameraCapabilities;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->mCapabilities:Landroid/util/SparseArray;

    return-object p0
.end method

.method public declared-synchronized getCapabilities(I)Lcom/android/camera2/CameraCapabilities;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "actualCameraId"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-interface {p0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "Camera2CompatAdapter"

    const-string v0, "Warning: getCapabilities(): #init() failed."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->mCapabilities:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera2/CameraCapabilities;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "camera"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->initCameraCapabilitiesByCameraId(ILandroid/hardware/camera2/CameraManager;)Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    const-string v2, "Camera2CompatAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Warning: getCapabilities(): return null for camera: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->mCurrentOpenedCameraId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "Camera2CompatAdapter"

    const-string v1, "Warning: getCurrentCameraCapabilities(): mCurrentOpenedCameraId is invalid."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->mCurrentOpenedCameraId:I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMaxJpegSize()I
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportMtkIspHidl"
        type = 0x0
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getMaxJpegSize(Lcom/android/camera2/CameraCapabilities;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMaxJpegSize: mCurrentOpenedCameraId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->mCurrentOpenedCameraId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", maxJpegSize = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Camera2CompatAdapter"

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public initCameraCapabilitiesByCameraId(ILandroid/hardware/camera2/CameraManager;)Lcom/android/camera2/CameraCapabilities;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraId",
            "cameraManager"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "Camera2CompatAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "E: initCameraCapabilitiesByCameraId(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    new-instance v2, Lcom/android/camera2/CameraCapabilities;

    invoke-direct {v2, v1, p1}, Lcom/android/camera2/CameraCapabilities;-><init>(Landroid/hardware/camera2/CameraCharacteristics;I)V

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isIncomplete(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Camera2CompatAdapter"

    const-string v2, "E: vendor tag recovery starting"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setupGlobalVendorTagDescriptor()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p2

    new-instance v2, Lcom/android/camera2/CameraCapabilities;

    invoke-direct {v2, p2, p1}, Lcom/android/camera2/CameraCapabilities;-><init>(Landroid/hardware/camera2/CameraCharacteristics;I)V

    const-string p2, "Camera2CompatAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "X: vendor tag recovery succeed? "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isIncomplete(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "NO"

    goto :goto_0

    :cond_0
    const-string v3, "YES"

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p2, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isIncomplete(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "Incomplete vendor tag set"

    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p2, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->mCapabilities:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string p0, "Camera2CompatAdapter"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "X: initCameraCapabilitiesByCameraId(): "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p0, p2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    :catchall_0
    move-exception p2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    const-string p2, "Camera2CompatAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to init cameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " CameraCapabilities: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p2, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized setCurrentOpenedCameraId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "actualCameraId"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->mCurrentOpenedCameraId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
