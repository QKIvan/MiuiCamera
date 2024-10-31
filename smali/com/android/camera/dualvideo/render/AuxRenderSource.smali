.class public Lcom/android/camera/dualvideo/render/AuxRenderSource;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/camera/dualvideo/render/RenderSource;


# static fields
.field private static final SKIP_FRAMES:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RenderSource"


# instance fields
.field private mCanDraw:Z

.field private mFrameReady:Z

.field private mFramesNeedSkip:I

.field private mGLStatusEmitter:Lio/reactivex/CompletableEmitter;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/camera/dualvideo/render/RenderSource$SourceListener;

.field private final mSourceType:Lcom/android/camera/dualvideo/util/RenderSourceType;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTexture:Lcom/android/gallery3d/ui/ExtTexture;

.field private mTextureSize:Landroid/util/Size;


# direct methods
.method public constructor <init>(Lcom/android/camera/dualvideo/util/RenderSourceType;Landroid/os/Handler;Lio/reactivex/CompletableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "handler",
            "emitter"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mFramesNeedSkip:I

    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mCanDraw:Z

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSourceType:Lcom/android/camera/dualvideo/util/RenderSourceType;

    iput-object p2, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mGLStatusEmitter:Lio/reactivex/CompletableEmitter;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/AuxRenderSource;->resetStatus()V

    return-void
.end method

.method private createSurfaceTexture()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mTextureSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mTextureSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSurface:Landroid/view/Surface;

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v1, LOooO0OO/OooO0O0/OooO00o/o00O0OOo/o0O000O/OooO00o;

    invoke-direct {v1, p0}, LOooO0OO/OooO0O0/OooO00o/o00O0OOo/o0O000O/OooO00o;-><init>(Lcom/android/camera/dualvideo/render/AuxRenderSource;)V

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method private getListener()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/dualvideo/render/RenderSource$SourceListener;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mListener:Lcom/android/camera/dualvideo/render/RenderSource$SourceListener;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$createSurfaceTexture$2(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "surfaceTexture"
        }
    .end annotation

    iget-boolean p1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mCanDraw:Z

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget p1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mFramesNeedSkip:I

    const/4 v1, 0x0

    const-string v2, "RenderSource"

    if-lez p1, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "frame skipped: "

    invoke-static {v2, v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget p1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mFramesNeedSkip:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mFramesNeedSkip:I

    goto :goto_0

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "subFrameReady"

    invoke-static {v2, v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mCanDraw:Z

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/AuxRenderSource;->getListener()Ljava/util/Optional;

    move-result-object p1

    new-instance v1, LOooO0OO/OooO0O0/OooO00o/o00O0OOo/o0O000O/OooO0OO;

    invoke-direct {v1, p0}, LOooO0OO/OooO0O0/OooO00o/o00O0OOo/o0O000O/OooO0OO;-><init>(Lcom/android/camera/dualvideo/render/AuxRenderSource;)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mFrameReady:Z

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/AuxRenderSource;->getListener()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LOooO0OO/OooO0O0/OooO00o/o00O0OOo/o0O000O/OooO0O0;

    invoke-direct {v0, p0}, LOooO0OO/OooO0O0/OooO00o/o00O0OOo/o0O000O/OooO0O0;-><init>(Lcom/android/camera/dualvideo/render/AuxRenderSource;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$null$0(Lcom/android/camera/dualvideo/render/RenderSource$SourceListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "l"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSourceType:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-interface {p1, p0}, Lcom/android/camera/dualvideo/render/RenderSource$SourceListener;->onNewStreamAvailable(Lcom/android/camera/dualvideo/util/RenderSourceType;)V

    return-void
.end method

.method private synthetic lambda$null$1(Lcom/android/camera/dualvideo/render/RenderSource$SourceListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "l"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSourceType:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-interface {p1, p0}, Lcom/android/camera/dualvideo/render/RenderSource$SourceListener;->onImageUpdated(Lcom/android/camera/dualvideo/util/RenderSourceType;)V

    return-void
.end method

.method private notifyTexReady()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mGLStatusEmitter:Lio/reactivex/CompletableEmitter;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/CompletableEmitter;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mGLStatusEmitter:Lio/reactivex/CompletableEmitter;

    invoke-interface {p0}, Lio/reactivex/CompletableEmitter;->onComplete()V

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mGLStatusEmitter:Lio/reactivex/CompletableEmitter;

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/AuxRenderSource;->lambda$createSurfaceTexture$2(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public synthetic OooO0O0(Lcom/android/camera/dualvideo/render/RenderSource$SourceListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/AuxRenderSource;->lambda$null$0(Lcom/android/camera/dualvideo/render/RenderSource$SourceListener;)V

    return-void
.end method

.method public synthetic OooO0OO(Lcom/android/camera/dualvideo/render/RenderSource$SourceListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/AuxRenderSource;->lambda$null$1(Lcom/android/camera/dualvideo/render/RenderSource$SourceListener;)V

    return-void
.end method

.method public attachToGL(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mTexture:Lcom/android/gallery3d/ui/ExtTexture;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "RenderSource"

    const-string v2, "attachToGL: "

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/android/gallery3d/ui/ExtTexture;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/ExtTexture;-><init>()V

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/ExtTexture;->onBind(Lcom/android/gallery3d/ui/GLCanvas;)Z

    iget-object p1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mTextureSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mTextureSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/gallery3d/ui/BasicTexture;->setSize(II)V

    iget-object p1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    iget-object p1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/AuxRenderSource;->notifyTexReady()V

    return-void
.end method

.method public canDraw()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mCanDraw:Z

    return p0
.end method

.method public getSourceType()Lcom/android/camera/dualvideo/util/RenderSourceType;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSourceType:Lcom/android/camera/dualvideo/util/RenderSourceType;

    return-object p0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public getTexture()Lcom/android/gallery3d/ui/ExtTexture;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mTexture:Lcom/android/gallery3d/ui/ExtTexture;

    return-object p0
.end method

.method public ismFrameReady()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-boolean p0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mFrameReady:Z

    return p0
.end method

.method public makeDrawable()V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mCanDraw:Z

    return-void
.end method

.method public prepare(Landroid/util/Size;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mTextureSize:Landroid/util/Size;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mTextureSize:Landroid/util/Size;

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/AuxRenderSource;->createSurfaceTexture()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mTextureSize:Landroid/util/Size;

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mCanDraw:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mListener:Lcom/android/camera/dualvideo/render/RenderSource$SourceListener;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    iput-object v1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSurface:Landroid/view/Surface;

    :cond_1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mTexture:Lcom/android/gallery3d/ui/ExtTexture;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->recycle()V

    iput-object v1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mTexture:Lcom/android/gallery3d/ui/ExtTexture;

    :cond_2
    return-void
.end method

.method public resetStatus()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mFramesNeedSkip:I

    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mFrameReady:Z

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSourceType:Lcom/android/camera/dualvideo/util/RenderSourceType;

    sget-object v2, Lcom/android/camera/dualvideo/util/RenderSourceType;->REMOTE_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mCanDraw:Z

    return-void
.end method

.method public setListener(Lcom/android/camera/dualvideo/render/RenderSource$SourceListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mListener:Lcom/android/camera/dualvideo/render/RenderSource$SourceListener;

    return-void
.end method

.method public setTexture(Lcom/android/gallery3d/ui/ExtTexture;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tex"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mTexture:Lcom/android/gallery3d/ui/ExtTexture;

    return-void
.end method

.method public updateTexImage()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    return-void
.end method
