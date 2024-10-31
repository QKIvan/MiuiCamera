.class public Lcom/android/camera/ui/render_engine/ExtRendererV2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/renderengine/ExternalRenderer;


# static fields
.field private static final TAG:Ljava/lang/String; = "ExtRendererV2"


# instance fields
.field private final mRenderEngine:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/ui/RenderEngineInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/RenderEngineInterface;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/ui/render_engine/ExtRendererV2;->mRenderEngine:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public isNeedCopyPreview()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/render_engine/ExtRendererV2;->mRenderEngine:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/ExtRendererV2;->mRenderEngine:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ui/RenderEngineInterface;

    invoke-interface {p0}, Lcom/android/camera/ui/RenderEngineInterface;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/CameraScreenNail;->getExternalFrameProcessor()Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->isNeedCopyPreviewFromExternal()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isProcessorReady()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/render_engine/ExtRendererV2;->mRenderEngine:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/ExtRendererV2;->mRenderEngine:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ui/RenderEngineInterface;

    invoke-interface {p0}, Lcom/android/camera/ui/RenderEngineInterface;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/CameraScreenNail;->getExternalFrameProcessor()Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->isProcessorReady()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public onDrawFrame(IIZ)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "needCpyTex"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/ExtRendererV2;->mRenderEngine:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ui/RenderEngineInterface;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "ExtRendererV2"

    const-string p2, "RenderEngineV2_ExtRenderer onDrawFrame fail"

    invoke-static {p1, p2, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    invoke-interface {p0}, Lcom/android/camera/ui/RenderEngineInterface;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getExternalFrameProcessor()Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v3

    invoke-virtual {v3}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->oo00o()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v2}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->getProcessorType()I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 p0, 0x2

    if-eq v3, p0, :cond_2

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/android/camera/ui/RenderEngineInterface;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    sget-object p2, LOooO0OO/OooO0O0/OooO00o/o00OO0O/o0000OOO/OooO00o;->o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00OO0O/o0000OOO/OooO00o;

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-interface {p0}, Lcom/android/camera/ui/RenderEngineInterface;->getFrameAvailableFlag()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Lcom/android/camera/ui/RenderEngineInterface;->getGLCanvas()Lcom/android/gallery3d/ui/GLCanvas;

    move-result-object p1

    invoke-interface {p0}, Lcom/android/camera/ui/RenderEngineInterface;->getPreviewTransform()[F

    move-result-object p2

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object p3

    invoke-interface {p0}, Lcom/android/camera/ui/RenderEngineInterface;->getExtTexture()Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object p0

    invoke-interface {v2, p1, p2, p3, p0}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->onDrawFrame(Lcom/android/gallery3d/ui/GLCanvas;[FLandroid/graphics/Rect;Lcom/android/gallery3d/ui/ExtTexture;)Z

    move-result p0

    return p0

    :cond_2
    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getExternalFrameRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-interface {v2, p0, p1, p2, p3}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->onDrawFrame(Landroid/graphics/Rect;IIZ)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public prepareProcessor()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/render_engine/ExtRendererV2;->mRenderEngine:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/ExtRendererV2;->mRenderEngine:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ui/RenderEngineInterface;

    invoke-interface {p0}, Lcom/android/camera/ui/RenderEngineInterface;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/CameraScreenNail;->getExternalFrameProcessor()Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->prepareGL()V

    :cond_0
    return-void
.end method

.method public releaseRenderer()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/render_engine/ExtRendererV2;->mRenderEngine:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/ExtRendererV2;->mRenderEngine:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ui/RenderEngineInterface;

    invoke-interface {p0}, Lcom/android/camera/ui/RenderEngineInterface;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/CameraScreenNail;->getExternalFrameProcessor()Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->releaseRender()V

    :cond_0
    return-void
.end method
