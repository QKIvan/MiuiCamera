.class public Lcom/xiaomi/renderengine/gl/EglWindowSurface;
.super Lcom/xiaomi/renderengine/gl/EglSurfaceBase;


# annotations
.annotation build Landroidx/annotation/WorkerThread;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EglWindowSurface"


# instance fields
.field private mAvailability:Z

.field private mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/xiaomi/renderengine/gl/EglCore;Landroid/graphics/SurfaceTexture;[I)V
    .locals 0
    .param p1    # Lcom/xiaomi/renderengine/gl/EglCore;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eglCore",
            "surfaceTexture",
            "attrs"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/xiaomi/renderengine/gl/EglSurfaceBase;-><init>(Lcom/xiaomi/renderengine/gl/EglCore;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaomi/renderengine/gl/EglWindowSurface;->mAvailability:Z

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/renderengine/gl/EglWindowSurface;->mLock:Ljava/lang/Object;

    invoke-direct {p0, p2, p3}, Lcom/xiaomi/renderengine/gl/EglWindowSurface;->init(Ljava/lang/Object;[I)V

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/renderengine/gl/EglCore;Landroid/view/Surface;[I)V
    .locals 0
    .param p1    # Lcom/xiaomi/renderengine/gl/EglCore;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eglCore",
            "surface",
            "attrs"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/xiaomi/renderengine/gl/EglSurfaceBase;-><init>(Lcom/xiaomi/renderengine/gl/EglCore;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaomi/renderengine/gl/EglWindowSurface;->mAvailability:Z

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/renderengine/gl/EglWindowSurface;->mLock:Ljava/lang/Object;

    invoke-direct {p0, p2, p3}, Lcom/xiaomi/renderengine/gl/EglWindowSurface;->init(Ljava/lang/Object;[I)V

    return-void
.end method

.method private init(Ljava/lang/Object;[I)V
    .locals 2
    .param p2    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "window",
            "attrs"
        }
    .end annotation

    const-string v0, "EglWindowSurface"

    const-string v1, "EglWindowSurface init start"

    invoke-static {v0, v1}, Lcom/xiaomi/renderengine/log/LogRE;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/renderengine/gl/EglWindowSurface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    instance-of v1, p1, Landroid/view/Surface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/renderengine/gl/EglSurfaceBase;->mEglCore:Lcom/xiaomi/renderengine/gl/EglCore;

    check-cast p1, Landroid/view/Surface;

    invoke-virtual {v1, p1, p2}, Lcom/xiaomi/renderengine/gl/EglCore;->createWindowSurface(Landroid/view/Surface;[I)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/renderengine/gl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/renderengine/gl/EglSurfaceBase;->mEglCore:Lcom/xiaomi/renderengine/gl/EglCore;

    check-cast p1, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, p1, p2}, Lcom/xiaomi/renderengine/gl/EglCore;->createWindowSurface(Landroid/graphics/SurfaceTexture;[I)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/renderengine/gl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaomi/renderengine/gl/EglWindowSurface;->mAvailability:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "EglWindowSurface"

    const-string p1, "EglWindowSurface init end"

    invoke-static {p0, p1}, Lcom/xiaomi/renderengine/log/LogRE;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public makeCurrent()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/renderengine/gl/EglWindowSurface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/xiaomi/renderengine/gl/EglWindowSurface;->mAvailability:Z

    if-eqz v1, :cond_0

    invoke-super {p0}, Lcom/xiaomi/renderengine/gl/EglSurfaceBase;->makeCurrent()Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_0
    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public release()Z
    .locals 3

    const-string v0, "EglWindowSurface"

    const-string v1, "EglWindowSurface release start"

    invoke-static {v0, v1}, Lcom/xiaomi/renderengine/log/LogRE;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/renderengine/gl/EglWindowSurface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/xiaomi/renderengine/gl/EglWindowSurface;->mAvailability:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/xiaomi/renderengine/gl/EglWindowSurface;->mAvailability:Z

    invoke-super {p0}, Lcom/xiaomi/renderengine/gl/EglSurfaceBase;->release()Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "EglWindowSurface"

    const-string v0, "EglWindowSurface release end"

    invoke-static {p0, v0}, Lcom/xiaomi/renderengine/log/LogRE;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public swapBuffers()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/renderengine/gl/EglWindowSurface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/xiaomi/renderengine/gl/EglWindowSurface;->mAvailability:Z

    if-eqz v1, :cond_0

    invoke-super {p0}, Lcom/xiaomi/renderengine/gl/EglSurfaceBase;->swapBuffers()Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_0
    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
