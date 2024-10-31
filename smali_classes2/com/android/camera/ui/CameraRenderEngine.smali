.class public Lcom/android/camera/ui/CameraRenderEngine;
.super Ljava/lang/Object;


# static fields
.field private static final DEBUG_INVALIDATE:Z = false

.field private static final EGL_CONFIG_ATTRS:[I

.field private static final EGL_WINDOW_SURFACE_ATTRIBUTES_NONE:[I

.field private static final RENDERING_COUNT_INTERVAL:I = 0x21

.field private static final TAG:Ljava/lang/String; = "CameraRenderEngine"

.field private static final WAIT_LOCK_TIMEOUT_MS:I = 0x15e


# instance fields
.field private final mActivity:Lcom/android/camera/Camera;

.field private mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

.field private mDisplayColorSpace:Lcom/xiaomi/renderengine/ColorSpace;

.field private mEGLContext10:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEGLContext14:Landroid/opengl/EGLContext;

.field private mEglCore:Lcom/xiaomi/renderengine/gl/EglCore;

.field private mFrameCount:I

.field private mFrameCountingStart:J

.field private mFrameRenderingCount:J

.field private mGLHandler:Landroid/os/Handler;

.field private volatile mHasSurface:Z

.field private mPreviewGLThread:Lcom/xiaomi/renderengine/gl/GLThread;

.field private mPreviewRunnable:Ljava/lang/Runnable;

.field private mPreviewSurface:Landroid/view/Surface;

.field public mPreviewSurfaceHeight:I

.field public mPreviewSurfaceWidth:I

.field private final mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private volatile mRenderRequested:Z

.field private volatile mSurfaceUpdated:Z

.field private mWindowSurface:Lcom/xiaomi/renderengine/gl/EglWindowSurface;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/ui/CameraRenderEngine;->EGL_CONFIG_ATTRS:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3038

    aput v2, v0, v1

    sput-object v0, Lcom/android/camera/ui/CameraRenderEngine;->EGL_WINDOW_SURFACE_ATTRIBUTES_NONE:[I

    return-void

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3025
        0x0
        0x3021
        0x0
        0x3040
        0x4
        0x3026
        0x8
        0x3038
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mFrameCount:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mFrameCountingStart:J

    iput-wide v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mFrameRenderingCount:J

    iput-boolean v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mRenderRequested:Z

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mHasSurface:Z

    iput-boolean v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mSurfaceUpdated:Z

    check-cast p1, Lcom/android/camera/Camera;

    iput-object p1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mActivity:Lcom/android/camera/Camera;

    sget-object p1, Lcom/xiaomi/renderengine/ColorSpace;->SRGB:Lcom/xiaomi/renderengine/ColorSpace;

    iput-object p1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mDisplayColorSpace:Lcom/xiaomi/renderengine/ColorSpace;

    new-instance p1, Lcom/xiaomi/renderengine/gl/GLThread;

    sget-object v1, Lcom/android/camera/ui/CameraRenderEngine;->EGL_CONFIG_ATTRS:[I

    const-string v2, "CameraRenderThread"

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-direct {p1, v2, v3, v4, v1}, Lcom/xiaomi/renderengine/gl/GLThread;-><init>(Ljava/lang/String;ILandroid/opengl/EGLContext;[I)V

    iput-object p1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mPreviewGLThread:Lcom/xiaomi/renderengine/gl/GLThread;

    invoke-virtual {p1}, Lcom/xiaomi/renderengine/gl/GLThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mGLHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mPreviewRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_0

    new-instance v1, LOooO0OO/OooO0O0/OooO00o/o00OO0O/OooO;

    invoke-direct {v1, p0}, LOooO0OO/OooO0O0/OooO00o/o00OO0O/OooO;-><init>(Lcom/android/camera/ui/CameraRenderEngine;)V

    iput-object v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mPreviewRunnable:Ljava/lang/Runnable;

    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mPreviewRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init CameraRenderEngine hash:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "CameraRenderEngine"

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private getEglWindowSurfaceAttributes(Lcom/xiaomi/renderengine/ColorSpace;)[I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dpyColorSpace"
        }
    .end annotation

    sget-object v0, Lcom/android/camera/ui/CameraRenderEngine$1;->$SwitchMap$com$xiaomi$renderengine$ColorSpace:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x0

    const-string v3, "CameraRenderEngine"

    if-eq p1, v0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "getEglWindowSurfaceAttributes: NONE"

    invoke-static {v3, p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, Lcom/android/camera/ui/CameraRenderEngine;->EGL_WINDOW_SURFACE_ATTRIBUTES_NONE:[I

    return-object p0

    :cond_0
    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "getEglWindowSurfaceAttributes: HDR"

    invoke-static {v3, p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array p0, v1, [I

    fill-array-data p0, :array_0

    return-object p0

    :cond_1
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p1

    invoke-virtual {p1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0oOo0O0()Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p0, Lcom/android/camera/ui/CameraRenderEngine;->EGL_WINDOW_SURFACE_ATTRIBUTES_NONE:[I

    return-object p0

    :cond_2
    const/16 p1, 0x3490

    invoke-static {p1}, Lcom/xiaomi/renderengine/ColorSpace;->requiredEglExtensions(I)[Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mEglCore:Lcom/xiaomi/renderengine/gl/EglCore;

    invoke-virtual {p0, p1}, Lcom/xiaomi/renderengine/gl/EglCore;->supports([Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    sget-object p0, Lcom/android/camera/ui/CameraRenderEngine;->EGL_WINDOW_SURFACE_ATTRIBUTES_NONE:[I

    return-object p0

    :cond_3
    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "getEglWindowSurfaceAttributes: WCG"

    invoke-static {v3, p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array p0, v1, [I

    fill-array-data p0, :array_1

    return-object p0

    :array_0
    .array-data 4
        0x309d
        0x3340
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x309d
        0x3490
        0x3038
    .end array-data
.end method

.method private getWindowSurface()Lcom/xiaomi/renderengine/gl/EglWindowSurface;
    .locals 8

    iget-boolean v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mHasSurface:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mSurfaceUpdated:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mPreviewSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWindowSurface start, updated="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/camera/ui/CameraRenderEngine;->mSurfaceUpdated:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " surface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/ui/CameraRenderEngine;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "CameraRenderEngine"

    invoke-static {v5, v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "getWindowSurface start"

    invoke-static {v5, v2}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/ui/CameraRenderEngine;->mWindowSurface:Lcom/xiaomi/renderengine/gl/EglWindowSurface;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/xiaomi/renderengine/gl/EglWindowSurface;->release()Z

    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/CameraRenderEngine;->mDisplayColorSpace:Lcom/xiaomi/renderengine/ColorSpace;

    invoke-direct {p0, v2}, Lcom/android/camera/ui/CameraRenderEngine;->getEglWindowSurfaceAttributes(Lcom/xiaomi/renderengine/ColorSpace;)[I

    move-result-object v2

    new-instance v4, Lcom/xiaomi/renderengine/gl/EglWindowSurface;

    iget-object v6, p0, Lcom/android/camera/ui/CameraRenderEngine;->mEglCore:Lcom/xiaomi/renderengine/gl/EglCore;

    iget-object v7, p0, Lcom/android/camera/ui/CameraRenderEngine;->mPreviewSurface:Landroid/view/Surface;

    invoke-direct {v4, v6, v7, v2}, Lcom/xiaomi/renderengine/gl/EglWindowSurface;-><init>(Lcom/xiaomi/renderengine/gl/EglCore;Landroid/view/Surface;[I)V

    iput-object v4, p0, Lcom/android/camera/ui/CameraRenderEngine;->mWindowSurface:Lcom/xiaomi/renderengine/gl/EglWindowSurface;

    const-string v2, "getWindowSurface end"

    invoke-static {v5, v2}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWindowSurface end, cost="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v3, p0, Lcom/android/camera/ui/CameraRenderEngine;->mSurfaceUpdated:Z

    :cond_2
    iget-object p0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mWindowSurface:Lcom/xiaomi/renderengine/gl/EglWindowSurface;

    return-object p0
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mPreviewGLThread:Lcom/xiaomi/renderengine/gl/GLThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/gl/GLThread;->getEglCore()Lcom/xiaomi/renderengine/gl/EglCore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mEglCore:Lcom/xiaomi/renderengine/gl/EglCore;

    :cond_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mEGLContext10:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mEGLContext14:Landroid/opengl/EGLContext;

    return-void
.end method

.method private synthetic lambda$onDestroy$4()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "CameraRenderEngine"

    const-string v3, "onDestroy start on GL Thread"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mWindowSurface:Lcom/xiaomi/renderengine/gl/EglWindowSurface;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/xiaomi/renderengine/gl/EglWindowSurface;->release()Z

    iput-object v3, p0, Lcom/android/camera/ui/CameraRenderEngine;->mWindowSurface:Lcom/xiaomi/renderengine/gl/EglWindowSurface;

    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLCanvasImpl;->deleteProgram()V

    iget-object v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BaseGLCanvas;->recycledResources()V

    iput-object v3, p0, Lcom/android/camera/ui/CameraRenderEngine;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    :cond_1
    new-array p0, v0, [Ljava/lang/Object;

    const-string v0, "onDestroy end on GL Thread"

    invoke-static {v2, v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onSurfaceChanged$2(II)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    const-string v0, "CameraRenderEngine"

    const-string v1, "onSurfaceChanged start on GL Thread"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "CameraRenderEngine"

    const-string v1, "onSurfaceChanged start"

    invoke-static {v0, v1}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x4

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/gallery3d/ui/GLCanvasImpl;->setSize(II)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object p1

    check-cast p1, Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mEGLContext10:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mEGLContext14:Landroid/opengl/EGLContext;

    iget-object p1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mActivity:Lcom/android/camera/Camera;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    iget-object p1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mActivity:Lcom/android/camera/Camera;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/android/camera/Camera;->updateSurfaceState(I)V

    :cond_0
    const-string p1, "CameraRenderEngine"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSurfaceChanged requestRender mRenderRequested="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mRenderRequested:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/ui/CameraRenderEngine;->requestRender()V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mFrameRenderingCount:J

    const-string p0, "CameraRenderEngine"

    const-string p1, "onSurfaceChanged end on GL Thread"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, "CameraRenderEngine"

    const-string p1, "onSurfaceChanged end"

    invoke-static {p0, p1}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private synthetic lambda$onSurfaceCreated$1()V
    .locals 5

    const-string v0, "CameraRenderEngine"

    const-string v1, "onSurfaceCreated start"

    invoke-static {v0, v1}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "onSurfaceCreated start on GL Thread"

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/camera/ui/CameraRenderEngine;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    const-string v3, "onSurfaceCreated end on GL Thread"

    if-eqz v2, :cond_0

    new-array p0, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mActivity "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/ui/CameraRenderEngine;->mActivity:Lcom/android/camera/Camera;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_1
    const-string v4, "is null"

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/camera/ui/CameraRenderEngine;->mActivity:Lcom/android/camera/Camera;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/ui/CameraRenderEngine;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    iget-object v2, p0, Lcom/android/camera/ui/CameraRenderEngine;->mActivity:Lcom/android/camera/Camera;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/android/camera/Camera;->updateSurfaceState(I)V

    :cond_2
    iget-object v2, p0, Lcom/android/camera/ui/CameraRenderEngine;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/ui/CameraRenderEngine;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-static {v2}, Lcom/android/gallery3d/ui/BasicTexture;->invalidateAllTextures(Lcom/android/gallery3d/ui/GLCanvas;)V

    new-instance v2, Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-direct {v2}, Lcom/android/gallery3d/ui/GLCanvasImpl;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/CameraRenderEngine;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    new-array p0, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, "onSurfaceCreated end"

    invoke-static {v0, p0}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private synthetic lambda$onSurfaceDestroyed$3()V
    .locals 4

    const-string v0, "CameraRenderEngine"

    const-string v1, "onSurfaceDestroyed start"

    invoke-static {v0, v1}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceDestroyed start on GL Thread, mEGLSurface="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/ui/CameraRenderEngine;->mWindowSurface:Lcom/xiaomi/renderengine/gl/EglWindowSurface;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mRenderRequested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/ui/CameraRenderEngine;->mRenderRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mWindowSurface:Lcom/xiaomi/renderengine/gl/EglWindowSurface;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/xiaomi/renderengine/gl/EglWindowSurface;->makeCurrent()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BaseGLCanvas;->clearBuffer()V

    iget-object v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mWindowSurface:Lcom/xiaomi/renderengine/gl/EglWindowSurface;

    invoke-virtual {v1}, Lcom/xiaomi/renderengine/gl/EglWindowSurface;->swapBuffers()Z

    :cond_1
    iput-boolean v3, p0, Lcom/android/camera/ui/CameraRenderEngine;->mRenderRequested:Z

    :cond_2
    new-array p0, v3, [Ljava/lang/Object;

    const-string v1, "onSurfaceDestroyed end on GL Thread"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, "onSurfaceDestroyed end"

    invoke-static {v0, p0}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$requestRender$5()V
    .locals 4

    invoke-direct {p0}, Lcom/android/camera/ui/CameraRenderEngine;->getWindowSurface()Lcom/xiaomi/renderengine/gl/EglWindowSurface;

    move-result-object v0

    const-string v1, "CameraRenderEngine"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "requestRender fail, EGLSurface not ready yet!"

    invoke-static {v1, v3, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v2, p0, Lcom/android/camera/ui/CameraRenderEngine;->mRenderRequested:Z

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/xiaomi/renderengine/gl/EglWindowSurface;->makeCurrent()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/camera/ui/CameraRenderEngine;->onDrawFrame()V

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/gl/EglWindowSurface;->swapBuffers()Z

    goto :goto_0

    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "requestRender fail, because window surface make current fail!"

    invoke-static {v1, v3, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v2, p0, Lcom/android/camera/ui/CameraRenderEngine;->mRenderRequested:Z

    :goto_0
    return-void
.end method

.method private onDrawFrame()V
    .locals 8

    sget-boolean v0, Lcom/android/camera/Util;->DEBUG_FPS:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/CameraRenderEngine;->outputFps()V

    :cond_0
    const-string v0, "CameraRenderEngine"

    const-string v1, "onDrawFrame start"

    invoke-static {v0, v1}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->recycledResources()V

    invoke-static {}, Lcom/android/gallery3d/ui/UploadedTexture;->resetUploadLimit()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mRenderRequested:Z

    iget-wide v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mFrameRenderingCount:J

    const-wide/16 v3, 0x21

    rem-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    const-string v1, "CameraRenderEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDrawFrame rendering count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/camera/ui/CameraRenderEngine;->mFrameRenderingCount:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-wide v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mFrameRenderingCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mFrameRenderingCount:J

    iget-object v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/ui/CameraRenderEngine;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    if-nez v2, :cond_2

    const-string p0, "CameraRenderEngine"

    const-string v2, "onDrawFrame fail, screenNail not ready yet!"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v2, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v1

    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/camera/ui/CameraRenderEngine;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->isAnimationRunning()Z

    move-result v3

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->isAnimationGaussian()Z

    move-result v4

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getExternalFrameProcessor()Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v6

    invoke-virtual {v6}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->oo00o()Z

    move-result v6

    if-nez v6, :cond_b

    invoke-interface {v5}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->getProcessorType()I

    move-result v6

    if-eqz v6, :cond_9

    const/4 v7, 0x1

    if-eq v6, v7, :cond_5

    const/4 v4, 0x2

    if-eq v6, v4, :cond_3

    goto/16 :goto_0

    :cond_3
    invoke-interface {v5}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->isProcessorReady()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getExternalFrameRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-interface {v5, v2, v0, v0, v0}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->onDrawFrame(Landroid/graphics/Rect;IIZ)Z

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_c

    iget-object v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-virtual {v2, v0}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    if-eqz v3, :cond_6

    if-eqz v4, :cond_7

    :cond_6
    move v0, v7

    :cond_7
    invoke-interface {v5}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->isProcessorReady()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getFrameAvailableFlag()Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-virtual {v2}, Lcom/android/camera/SurfaceTextureScreenNail;->getCurrentTransform()[F

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/camera/SurfaceTextureScreenNail;->getExtTexture()Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object v2

    invoke-interface {v5, v0, v3, v4, v2}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->onDrawFrame(Lcom/android/gallery3d/ui/GLCanvas;[FLandroid/graphics/Rect;Lcom/android/gallery3d/ui/ExtTexture;)Z

    goto :goto_0

    :cond_8
    invoke-interface {v5}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->prepareGL()V

    if-eqz v3, :cond_c

    iget-object v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-virtual {v2, v0}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;)V

    goto :goto_0

    :cond_9
    iget-object v6, p0, Lcom/android/camera/ui/CameraRenderEngine;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-virtual {v2, v6}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;)V

    if-eqz v3, :cond_a

    if-eqz v4, :cond_c

    :cond_a
    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getExternalFrameRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-interface {v5, v2, v0, v0, v0}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->onDrawFrame(Landroid/graphics/Rect;IIZ)Z

    goto :goto_0

    :cond_b
    iget-object v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-virtual {v2, v0}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;)V

    :cond_c
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/gallery3d/ui/UploadedTexture;->uploadLimitReached()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/camera/ui/CameraRenderEngine;->requestRender()V

    :cond_d
    iget-object p0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->recycledResources()V

    const-string p0, "CameraRenderEngine"

    const-string v0, "onDrawFrame end"

    invoke-static {p0, v0}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private outputFps()V
    .locals 7
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/ui/CameraRenderEngine;->mFrameCountingStart:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    iput-wide v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mFrameCountingStart:J

    goto :goto_0

    :cond_0
    sub-long v2, v0, v2

    const-wide/32 v4, 0x3b9aca00

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "surface draw fps: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/ui/CameraRenderEngine;->mFrameCount:I

    int-to-double v3, v3

    const-wide v5, 0x41cdcd6500000000L    # 1.0E9

    mul-double/2addr v3, v5

    iget-wide v5, p0, Lcom/android/camera/ui/CameraRenderEngine;->mFrameCountingStart:J

    sub-long v5, v0, v5

    long-to-double v5, v5

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CameraRenderEngine"

    invoke-static {v3, v2}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mFrameCountingStart:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mFrameCount:I

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mFrameCount:I

    return-void
.end method

.method private setPreviewSurface(Landroid/view/Surface;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "surface",
            "width",
            "height"
        }
    .end annotation

    iget v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mPreviewSurfaceWidth:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mPreviewSurfaceHeight:I

    if-eq v0, p3, :cond_1

    :cond_0
    iput p2, p0, Lcom/android/camera/ui/CameraRenderEngine;->mPreviewSurfaceWidth:I

    iput p3, p0, Lcom/android/camera/ui/CameraRenderEngine;->mPreviewSurfaceHeight:I

    iput-object p1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mPreviewSurface:Landroid/view/Surface;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mSurfaceUpdated:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setPreviewSurface surface="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "CameraRenderEngine"

    invoke-static {p2, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/CameraRenderEngine;->lambda$new$0()V

    return-void
.end method

.method public synthetic OooO0O0()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/CameraRenderEngine;->lambda$onDestroy$4()V

    return-void
.end method

.method public synthetic OooO0OO(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/CameraRenderEngine;->lambda$onSurfaceChanged$2(II)V

    return-void
.end method

.method public synthetic OooO0Oo()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/CameraRenderEngine;->lambda$onSurfaceCreated$1()V

    return-void
.end method

.method public synthetic OooO0o()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/CameraRenderEngine;->lambda$requestRender$5()V

    return-void
.end method

.method public synthetic OooO0o0()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/CameraRenderEngine;->lambda$onSurfaceDestroyed$3()V

    return-void
.end method

.method public getEGLContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mEGLContext10:Ljavax/microedition/khronos/egl/EGLContext;

    return-object p0
.end method

.method public getEGLContext14()Landroid/opengl/EGLContext;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mEGLContext14:Landroid/opengl/EGLContext;

    return-object p0
.end method

.method public getGLCanvas()Lcom/android/gallery3d/ui/GLCanvasImpl;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mGLHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public onDestroy()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "CameraRenderEngine"

    const-string v3, "onDestroy +"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mGLHandler:Landroid/os/Handler;

    new-instance v3, LOooO0OO/OooO0O0/OooO00o/o00OO0O/OooOO0O;

    invoke-direct {v3, p0}, LOooO0OO/OooO0O0/OooO00o/o00OO0O/OooOO0O;-><init>(Lcom/android/camera/ui/CameraRenderEngine;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mGLHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/ui/CameraRenderEngine;->mPreviewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mGLHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mEglCore:Lcom/xiaomi/renderengine/gl/EglCore;

    iget-object v3, p0, Lcom/android/camera/ui/CameraRenderEngine;->mPreviewGLThread:Lcom/xiaomi/renderengine/gl/GLThread;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/xiaomi/renderengine/gl/GLThread;->release()V

    iput-object v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mPreviewGLThread:Lcom/xiaomi/renderengine/gl/GLThread;

    :cond_0
    new-array p0, v0, [Ljava/lang/Object;

    const-string v0, "onDestroy -"

    invoke-static {v2, v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;II)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "holder",
            "width",
            "height"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraRenderEngine"

    invoke-static {v1, v0}, LOooO0OO/OooO0O0/OooO0OO/OooO0o;->OooO0o0(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "onSurfaceChanged start"

    invoke-static {v1, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v2

    invoke-virtual {v2}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0O0oooo()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x2d0

    if-eq p2, v2, :cond_0

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result p0

    mul-int/2addr p0, v2

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result p2

    div-int/2addr p0, p2

    invoke-interface {p1, v2, p0}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "onSurfaceChanged end, change surface size for limited it"

    invoke-static {v1, p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/ui/CameraRenderEngine;->mHasSurface:Z

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ui/CameraRenderEngine;->setPreviewSurface(Landroid/view/Surface;II)V

    iget-object p1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mActivity:Lcom/android/camera/Camera;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    iget-object v2, p0, Lcom/android/camera/ui/CameraRenderEngine;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/Util;->getRenderOrientation(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/camera/SurfaceTextureScreenNail;->setDisplayOrientation(I)V

    :cond_1
    iget-boolean p1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mSurfaceUpdated:Z

    if-nez p1, :cond_3

    invoke-static {}, Lcom/android/camera/display/device/ScreenOrientationManager;->supportSeamless()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/camera/display/Display;->isSupportLandscape()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mActivity:Lcom/android/camera/Camera;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/ui/CameraRenderEngine;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p2}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p2

    iget p2, p2, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraWidth:I

    iget-object p3, p0, Lcom/android/camera/ui/CameraRenderEngine;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p3}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p3

    iget p3, p3, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraHeight:I

    iget-object v2, p0, Lcom/android/camera/ui/CameraRenderEngine;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/Util;->getRenderOrientation(I)I

    move-result v2

    invoke-virtual {p1, p2, p3, v2}, Lcom/android/camera/SurfaceTextureScreenNail;->checkCameraSize(III)V

    iget-object p0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mActivity:Lcom/android/camera/Camera;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/camera/ActivityBase;->onFrameAvailable(I)V

    :cond_2
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "onSurfaceChanged end, surface has been updated"

    invoke-static {v1, p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mGLHandler:Landroid/os/Handler;

    new-instance v2, LOooO0OO/OooO0O0/OooO00o/o00OO0O/OooO0o;

    invoke-direct {v2, p0, p2, p3}, LOooO0OO/OooO0O0/OooO00o/o00OO0O/OooO0o;-><init>(Lcom/android/camera/ui/CameraRenderEngine;II)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "onSurfaceChanged end"

    invoke-static {v1, p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onSurfaceCreated()V
    .locals 2

    const-string v0, "CameraRenderEngine"

    const-string v1, "onSurfaceCreated"

    invoke-static {v0, v1}, LOooO0OO/OooO0O0/OooO0OO/OooO0o;->OooO0o0(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mGLHandler:Landroid/os/Handler;

    new-instance v1, LOooO0OO/OooO0O0/OooO00o/o00OO0O/OooO0O0;

    invoke-direct {v1, p0}, LOooO0OO/OooO0O0/OooO00o/o00OO0O/OooO0O0;-><init>(Lcom/android/camera/ui/CameraRenderEngine;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSurfaceDestroyed()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceDestroyed start, mActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "CameraRenderEngine"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mPreviewSurfaceWidth:I

    iput v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mPreviewSurfaceHeight:I

    iput-boolean v1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mHasSurface:Z

    iget-object v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getExternalFrameProcessor()Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->releaseRender()V

    :cond_1
    new-instance v0, Lcom/xiaomi/gl/BlockingRunnable;

    new-instance v2, LOooO0OO/OooO0O0/OooO00o/o00OO0O/OooOO0;

    invoke-direct {v2, p0}, LOooO0OO/OooO0O0/OooO00o/o00OO0O/OooOO0;-><init>(Lcom/android/camera/ui/CameraRenderEngine;)V

    invoke-direct {v0, v2}, Lcom/xiaomi/gl/BlockingRunnable;-><init>(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mGLHandler:Landroid/os/Handler;

    if-eqz p0, :cond_2

    const-wide/16 v4, 0x15e

    invoke-virtual {v0, p0, v4, v5}, Lcom/xiaomi/gl/BlockingRunnable;->postAndWait(Landroid/os/Handler;J)Z

    :cond_2
    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "onSurfaceDestroyed end"

    invoke-static {v3, v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public postToGL(Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "r"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mGLHandler:Landroid/os/Handler;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "CameraRenderEngine"

    const-string v0, "postToGL: GL handler not ready!"

    invoke-static {p1, v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public requestRender()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mRenderRequested:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mGLHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "CameraRenderEngine"

    const-string v1, "requestRender fail, GL not ready yet!"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mRenderRequested:Z

    iget-object v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mGLHandler:Landroid/os/Handler;

    new-instance v1, LOooO0OO/OooO0O0/OooO00o/o00OO0O/OooO0OO;

    invoke-direct {v1, p0}, LOooO0OO/OooO0O0/OooO00o/o00OO0O/OooO0OO;-><init>(Lcom/android/camera/ui/CameraRenderEngine;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setDisplayColorSpace(Lcom/xiaomi/renderengine/ColorSpace;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dpyColorSpace"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDisplayColorSpace: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "CameraRenderEngine"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/ui/CameraRenderEngine;->mDisplayColorSpace:Lcom/xiaomi/renderengine/ColorSpace;

    if-ne v0, p1, :cond_0

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "setDisplayColorSpace: nothing change."

    invoke-static {v3, p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mDisplayColorSpace:Lcom/xiaomi/renderengine/ColorSpace;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/ui/CameraRenderEngine;->mSurfaceUpdated:Z

    return-void
.end method
