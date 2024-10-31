.class public Lcom/xiaomi/renderengine/renderer/AnimationRenderer;
.super Lcom/xiaomi/renderengine/renderer/Renderer;


# static fields
.field private static final CAPTURE_COLOR_ALPHA:F = 0.7f

.field private static final JUMP_GALLERY_DURATION_MS:I = 0x7d0

.field private static final NORMAL_CAPTURE_DURATION_MS:I = 0x3c

.field private static final RECORD_CAPTURE_DURATION_MS:I = 0x1e

.field private static final SWITCH_DURATION_MS:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "AnimationRenderer"


# instance fields
.field private mAnimAttribute:Lcom/xiaomi/renderengine/data/AnimRendererAttribute;

.field private mAnimRenderCount:I

.field private mAnimStartTime:J

.field private mColorRenderer:Lcom/xiaomi/renderengine/renderer/ColorRenderer;

.field private mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

.field private mLastFrameBlurBitmap:Landroid/graphics/Bitmap;

.field private mXBlurRenderer:Lcom/xiaomi/renderengine/renderer/XBlurEffectRenderer;

.field private mYBlurRenderer:Lcom/xiaomi/renderengine/renderer/YBlurEffectRenderer;


# direct methods
.method public constructor <init>(Lcom/xiaomi/renderengine/RenderEngine;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    invoke-direct {p0}, Lcom/xiaomi/renderengine/renderer/Renderer;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    const/4 v1, 0x0

    iput v1, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimRenderCount:I

    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimAttribute:Lcom/xiaomi/renderengine/data/AnimRendererAttribute;

    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mLastFrameBlurBitmap:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mEngine:Lcom/xiaomi/renderengine/RenderEngine;

    iget-object p1, p1, Lcom/xiaomi/renderengine/RenderEngine;->mRendererManager:Lcom/xiaomi/renderengine/renderer/RendererManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaomi/renderengine/renderer/RendererManager;->getLocalRenderer(I)Lcom/xiaomi/renderengine/renderer/Renderer;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/renderengine/renderer/XBlurEffectRenderer;

    iput-object p1, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mXBlurRenderer:Lcom/xiaomi/renderengine/renderer/XBlurEffectRenderer;

    iget-object p1, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mEngine:Lcom/xiaomi/renderengine/RenderEngine;

    iget-object p1, p1, Lcom/xiaomi/renderengine/RenderEngine;->mRendererManager:Lcom/xiaomi/renderengine/renderer/RendererManager;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/xiaomi/renderengine/renderer/RendererManager;->getLocalRenderer(I)Lcom/xiaomi/renderengine/renderer/Renderer;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/renderengine/renderer/YBlurEffectRenderer;

    iput-object p1, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mYBlurRenderer:Lcom/xiaomi/renderengine/renderer/YBlurEffectRenderer;

    iget-object p1, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mEngine:Lcom/xiaomi/renderengine/RenderEngine;

    iget-object p1, p1, Lcom/xiaomi/renderengine/RenderEngine;->mRendererManager:Lcom/xiaomi/renderengine/renderer/RendererManager;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/xiaomi/renderengine/renderer/RendererManager;->getLocalRenderer(I)Lcom/xiaomi/renderengine/renderer/Renderer;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/renderengine/renderer/ColorRenderer;

    iput-object p1, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mColorRenderer:Lcom/xiaomi/renderengine/renderer/ColorRenderer;

    return-void
.end method

.method private copyPreviewFrame(Lcom/xiaomi/renderengine/RenderParams;Lcom/xiaomi/renderengine/buffer/FrameBuffer;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "renderParams",
            "frameBuffer"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mEngine:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/RenderEngine;->getExternalRenderer()Lcom/xiaomi/renderengine/ExternalRenderer;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mEngine:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v1}, Lcom/xiaomi/renderengine/RenderEngine;->getFrameAvailableFlag()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/xiaomi/renderengine/ExternalRenderer;->isNeedCopyPreview()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x8d40

    invoke-virtual {p2}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getFboId()I

    move-result v3

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-virtual {p2}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getHeight()I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v0, v1, v3, v4}, Lcom/xiaomi/renderengine/ExternalRenderer;->onDrawFrame(IIZ)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_3

    iget-boolean v0, p1, Lcom/xiaomi/renderengine/RenderParams;->mHaveEffect:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mEngine:Lcom/xiaomi/renderengine/RenderEngine;

    iget-object v3, p0, Lcom/xiaomi/renderengine/RenderEngine;->mTexProgramOES:Lcom/xiaomi/renderengine/program/TextureProgram;

    iget v4, p1, Lcom/xiaomi/renderengine/RenderParams;->mOesTex:I

    iget-object v5, p1, Lcom/xiaomi/renderengine/RenderParams;->mSourceColorSpace:Lcom/xiaomi/renderengine/ColorSpace;

    invoke-virtual {p2}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getFboId()I

    move-result v6

    iget-object v7, p1, Lcom/xiaomi/renderengine/RenderParams;->mTargetColorSpace:Lcom/xiaomi/renderengine/ColorSpace;

    invoke-virtual {p2}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getWidth()I

    move-result v8

    invoke-virtual {p2}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getHeight()I

    move-result v9

    iget-object v10, p1, Lcom/xiaomi/renderengine/RenderParams;->mTexTrans:[F

    new-instance v11, Landroid/graphics/Rect;

    invoke-virtual {p2}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getWidth()I

    move-result p0

    invoke-virtual {p2}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getHeight()I

    move-result v0

    invoke-direct {v11, v2, v2, p0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v12, p1, Lcom/xiaomi/renderengine/RenderParams;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    invoke-virtual/range {v3 .. v12}, Lcom/xiaomi/renderengine/program/TextureProgram;->draw(ILcom/xiaomi/renderengine/ColorSpace;ILcom/xiaomi/renderengine/ColorSpace;II[FLandroid/graphics/Rect;Lcom/xiaomi/renderengine/gl/GLState;)I

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lcom/xiaomi/renderengine/RenderParams;->mFbIn:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    if-eq v0, p2, :cond_2

    iget-object p0, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mEngine:Lcom/xiaomi/renderengine/RenderEngine;

    iget-object v3, p0, Lcom/xiaomi/renderengine/RenderEngine;->mTexProgram2D:Lcom/xiaomi/renderengine/program/TextureProgram;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getTextureId()I

    move-result v4

    iget-object v5, p1, Lcom/xiaomi/renderengine/RenderParams;->mTargetColorSpace:Lcom/xiaomi/renderengine/ColorSpace;

    invoke-virtual {p2}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getFboId()I

    move-result v6

    iget-object v7, p1, Lcom/xiaomi/renderengine/RenderParams;->mTargetColorSpace:Lcom/xiaomi/renderengine/ColorSpace;

    invoke-virtual {p2}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getWidth()I

    move-result v8

    invoke-virtual {p2}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getHeight()I

    move-result v9

    iget-object v10, p1, Lcom/xiaomi/renderengine/RenderParams;->mTexTrans:[F

    new-instance v11, Landroid/graphics/Rect;

    invoke-virtual {p2}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getWidth()I

    move-result p0

    invoke-virtual {p2}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getHeight()I

    move-result v0

    invoke-direct {v11, v2, v2, p0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v12, p1, Lcom/xiaomi/renderengine/RenderParams;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    invoke-virtual/range {v3 .. v12}, Lcom/xiaomi/renderengine/program/TextureProgram;->draw(ILcom/xiaomi/renderengine/ColorSpace;ILcom/xiaomi/renderengine/ColorSpace;II[FLandroid/graphics/Rect;Lcom/xiaomi/renderengine/gl/GLState;)I

    :cond_2
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "copy preview frame to fbo :"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getFboId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AnimationRenderer"

    invoke-static {p1, p0}, Lcom/xiaomi/renderengine/log/LogRE;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private initDoubleBuffer(IIZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "isSmallSize"
        }
    .end annotation

    if-eqz p3, :cond_0

    div-int/lit8 p1, p1, 0x4

    :cond_0
    if-eqz p3, :cond_1

    div-int/lit8 p2, p2, 0x4

    :cond_1
    iget-object p3, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    const-string v0, "x"

    const-string v1, "AnimationRenderer"

    if-nez p3, :cond_2

    new-instance p3, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-direct {p3, p1, p2}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;-><init>(II)V

    iput-object p3, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "new double buffer, size:"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaomi/renderengine/log/LogRE;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getWidth()I

    move-result p3

    if-ne p3, p1, :cond_3

    iget-object p3, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {p3}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getHeight()I

    move-result p3

    if-eq p3, p2, :cond_4

    :cond_3
    iget-object p3, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {p3}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->release()V

    new-instance p3, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-direct {p3, p1, p2}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;-><init>(II)V

    iput-object p3, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "resize double buffer to "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaomi/renderengine/log/LogRE;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private jumpGalleryAnimRender(Lcom/xiaomi/renderengine/RenderParams;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderParams"
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    const-string v1, "AnimationRenderer"

    if-lez v0, :cond_0

    const-string p0, "switchModeAnimRender done"

    invoke-static {v1, p0}, Lcom/xiaomi/renderengine/log/LogRE;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimRenderCount:I

    if-nez v0, :cond_2

    iget v0, p1, Lcom/xiaomi/renderengine/RenderParams;->mWidth:I

    iget v4, p1, Lcom/xiaomi/renderengine/RenderParams;->mHeight:I

    const/4 v5, 0x1

    invoke-direct {p0, v0, v4, v5}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->initDoubleBuffer(IIZ)V

    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getInputBuffer()Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->copyPreviewFrame(Lcom/xiaomi/renderengine/RenderParams;Lcom/xiaomi/renderengine/buffer/FrameBuffer;)V

    const/4 v0, 0x0

    :goto_0
    const/16 v4, 0x8

    if-ge v0, v4, :cond_1

    invoke-direct {p0, p1}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->onceBlurRender(Lcom/xiaomi/renderengine/RenderParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getInputBuffer()Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getFboId()I

    move-result v0

    iget-object v4, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {v4}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {v5}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getHeight()I

    move-result v5

    invoke-static {v0, v4, v5}, Lcom/xiaomi/renderengine/gl/GLUtils;->createBitmapFromFbo(III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mLastFrameBlurBitmap:Landroid/graphics/Bitmap;

    :cond_2
    invoke-direct {p0, p1}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->onceBlurRender(Lcom/xiaomi/renderengine/RenderParams;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jumpGalleryAnimRender renderParams="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " count="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimRenderCount:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cost="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaomi/renderengine/log/LogRE;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getInputBuffer()Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getTextureId()I

    move-result p0

    return p0
.end method

.method private lastFrameBlurRender(Lcom/xiaomi/renderengine/RenderParams;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderParams"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimRenderCount:I

    if-nez v2, :cond_0

    iget v2, p1, Lcom/xiaomi/renderengine/RenderParams;->mWidth:I

    iget v3, p1, Lcom/xiaomi/renderengine/RenderParams;->mHeight:I

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->initDoubleBuffer(IIZ)V

    iget-object v2, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {v2}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getInputBuffer()Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->copyPreviewFrame(Lcom/xiaomi/renderengine/RenderParams;Lcom/xiaomi/renderengine/buffer/FrameBuffer;)V

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    invoke-direct {p0, p1}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->onceBlurRender(Lcom/xiaomi/renderengine/RenderParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    iget-object v2, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {v2}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getInputBuffer()Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getFboId()I

    move-result v2

    iget-object v3, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {v3}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {v4}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getHeight()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/xiaomi/renderengine/gl/GLUtils;->createBitmapFromFbo(III)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mLastFrameBlurBitmap:Landroid/graphics/Bitmap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lastFrameBlurRender renderParams="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " count="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimRenderCount:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " cost="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v0

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AnimationRenderer"

    invoke-static {p1, p0}, Lcom/xiaomi/renderengine/log/LogRE;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method private nightCaptureAnimRender(Lcom/xiaomi/renderengine/RenderParams;)I
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderParams"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimAttribute:Lcom/xiaomi/renderengine/data/AnimRendererAttribute;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/xiaomi/renderengine/data/AnimRendererAttribute;->mCapAnimDuration:I

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3c

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimStartTime:J

    sub-long/2addr v2, v4

    cmp-long v2, v2, v0

    const-string v3, "AnimationRenderer"

    if-lez v2, :cond_1

    const-string p0, "nightCaptureAnimRender done"

    invoke-static {v3, p0}, Lcom/xiaomi/renderengine/log/LogRE;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget v2, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimRenderCount:I

    if-nez v2, :cond_2

    iget-object v2, p1, Lcom/xiaomi/renderengine/RenderParams;->mFbIn:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-direct {p0, p1, v2}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->copyPreviewFrame(Lcom/xiaomi/renderengine/RenderParams;Lcom/xiaomi/renderengine/buffer/FrameBuffer;)V

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimStartTime:J

    sub-long/2addr v6, v8

    iget-object v2, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimAttribute:Lcom/xiaomi/renderengine/data/AnimRendererAttribute;

    if-eqz v2, :cond_3

    iget v2, v2, Lcom/xiaomi/renderengine/data/AnimRendererAttribute;->mCapAnimAlphaPercent:F

    goto :goto_1

    :cond_3
    const v2, 0x3f333333    # 0.7f

    :goto_1
    long-to-float v6, v6

    mul-float/2addr v6, v2

    long-to-float v0, v0

    div-float/2addr v6, v0

    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float/2addr v2, v0

    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mColorRenderer:Lcom/xiaomi/renderengine/renderer/ColorRenderer;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v6, 0x0

    invoke-static {v1, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->setColor(ILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mColorRenderer:Lcom/xiaomi/renderengine/renderer/ColorRenderer;

    invoke-virtual {v0, p1}, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->onRender(Lcom/xiaomi/renderengine/RenderParams;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nightCaptureAnimRender renderParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimRenderCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " cost="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " darkLevel="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/xiaomi/renderengine/log/LogRE;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p1, Lcom/xiaomi/renderengine/RenderParams;->mFbOut:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getTextureId()I

    move-result p0

    return p0
.end method

.method private normalCaptureAnimRender(Lcom/xiaomi/renderengine/RenderParams;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderParams"
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    cmp-long v0, v0, v2

    const-string v1, "AnimationRenderer"

    if-lez v0, :cond_0

    const-string p0, "normalCaptureAnimRender done"

    invoke-static {v1, p0}, Lcom/xiaomi/renderengine/log/LogRE;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimRenderCount:I

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/xiaomi/renderengine/RenderParams;->mFbIn:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->copyPreviewFrame(Lcom/xiaomi/renderengine/RenderParams;Lcom/xiaomi/renderengine/buffer/FrameBuffer;)V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mColorRenderer:Lcom/xiaomi/renderengine/renderer/ColorRenderer;

    const/16 v4, 0xb2

    const/4 v5, 0x0

    invoke-static {v4, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->setColor(ILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mColorRenderer:Lcom/xiaomi/renderengine/renderer/ColorRenderer;

    invoke-virtual {v0, p1}, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->onRender(Lcom/xiaomi/renderengine/RenderParams;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "normalCaptureAnimRender renderParams="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " count="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimRenderCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " cost="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaomi/renderengine/log/LogRE;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p1, Lcom/xiaomi/renderengine/RenderParams;->mFbOut:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getTextureId()I

    move-result p0

    return p0
.end method

.method private onceBlurRender(Lcom/xiaomi/renderengine/RenderParams;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderParams"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getInputBuffer()Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaomi/renderengine/RenderParams;->mFbIn:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getOutputBuffer()Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaomi/renderengine/RenderParams;->mFbOut:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getWidth()I

    move-result v0

    iput v0, p1, Lcom/xiaomi/renderengine/RenderParams;->mWidth:I

    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getHeight()I

    move-result v0

    iput v0, p1, Lcom/xiaomi/renderengine/RenderParams;->mHeight:I

    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mXBlurRenderer:Lcom/xiaomi/renderengine/renderer/XBlurEffectRenderer;

    invoke-virtual {v0, p1}, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->onRender(Lcom/xiaomi/renderengine/RenderParams;)I

    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->swapBuffer()V

    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getInputBuffer()Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaomi/renderengine/RenderParams;->mFbIn:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getOutputBuffer()Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaomi/renderengine/RenderParams;->mFbOut:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mYBlurRenderer:Lcom/xiaomi/renderengine/renderer/YBlurEffectRenderer;

    invoke-virtual {v0, p1}, Lcom/xiaomi/renderengine/renderer/BaseBlurEffectRenderer;->onRender(Lcom/xiaomi/renderengine/RenderParams;)I

    iget-object p0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->swapBuffer()V

    return-void
.end method

.method private realtimeBlurRender(Lcom/xiaomi/renderengine/RenderParams;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderParams"
        }
    .end annotation

    iget v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimRenderCount:I

    if-nez v0, :cond_0

    iget v0, p1, Lcom/xiaomi/renderengine/RenderParams;->mWidth:I

    iget v1, p1, Lcom/xiaomi/renderengine/RenderParams;->mHeight:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->initDoubleBuffer(IIZ)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getInputBuffer()Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->copyPreviewFrame(Lcom/xiaomi/renderengine/RenderParams;Lcom/xiaomi/renderengine/buffer/FrameBuffer;)V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->onceBlurRender(Lcom/xiaomi/renderengine/RenderParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getInputBuffer()Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getTextureId()I

    move-result p0

    return p0
.end method

.method private recordCaptureAnimRender(Lcom/xiaomi/renderengine/RenderParams;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderParams"
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1e

    cmp-long v0, v0, v2

    const-string v1, "AnimationRenderer"

    if-lez v0, :cond_0

    const-string p0, "recordCaptureAnimRender done"

    invoke-static {v1, p0}, Lcom/xiaomi/renderengine/log/LogRE;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_0
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimRenderCount:I

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget v0, p1, Lcom/xiaomi/renderengine/RenderParams;->mWidth:I

    iget v3, p1, Lcom/xiaomi/renderengine/RenderParams;->mHeight:I

    invoke-direct {p0, v0, v3, v2}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->initDoubleBuffer(IIZ)V

    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getInputBuffer()Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->copyPreviewFrame(Lcom/xiaomi/renderengine/RenderParams;Lcom/xiaomi/renderengine/buffer/FrameBuffer;)V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getInputBuffer()Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaomi/renderengine/RenderParams;->mFbIn:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getOutputBuffer()Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaomi/renderengine/RenderParams;->mFbOut:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mColorRenderer:Lcom/xiaomi/renderengine/renderer/ColorRenderer;

    const/16 v3, 0xb2

    invoke-static {v3, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->setColor(ILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mColorRenderer:Lcom/xiaomi/renderengine/renderer/ColorRenderer;

    invoke-virtual {v0, p1}, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->onRender(Lcom/xiaomi/renderengine/RenderParams;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recordCaptureAnimRender params="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " count="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimRenderCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaomi/renderengine/log/LogRE;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p1, Lcom/xiaomi/renderengine/RenderParams;->mFbOut:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getTextureId()I

    move-result p0

    return p0
.end method

.method private switchModeAnimRender(Lcom/xiaomi/renderengine/RenderParams;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderParams"
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    const-string v1, "AnimationRenderer"

    if-lez v0, :cond_0

    const-string p0, "switchModeAnimRender done"

    invoke-static {v1, p0}, Lcom/xiaomi/renderengine/log/LogRE;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimRenderCount:I

    if-nez v0, :cond_1

    iget v0, p1, Lcom/xiaomi/renderengine/RenderParams;->mWidth:I

    iget v4, p1, Lcom/xiaomi/renderengine/RenderParams;->mHeight:I

    const/4 v5, 0x1

    invoke-direct {p0, v0, v4, v5}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->initDoubleBuffer(IIZ)V

    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getInputBuffer()Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->copyPreviewFrame(Lcom/xiaomi/renderengine/RenderParams;Lcom/xiaomi/renderengine/buffer/FrameBuffer;)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->onceBlurRender(Lcom/xiaomi/renderengine/RenderParams;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchModeAnimRender renderParams="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " count="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimRenderCount:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cost="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaomi/renderengine/log/LogRE;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getInputBuffer()Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getTextureId()I

    move-result p0

    return p0
.end method


# virtual methods
.method public getAnimationResult(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animType"
        }
    .end annotation

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mLastFrameBlurBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mIsInitialized:Z

    if-eqz v0, :cond_0

    const-string p0, "AnimationRenderer"

    const-string p1, "skip onAttach, this renderer already be attached"

    invoke-static {p0, p1}, Lcom/xiaomi/renderengine/log/LogRE;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/xiaomi/renderengine/renderer/Renderer;->onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V

    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mXBlurRenderer:Lcom/xiaomi/renderengine/renderer/XBlurEffectRenderer;

    invoke-virtual {v0, p1}, Lcom/xiaomi/renderengine/renderer/XBlurEffectRenderer;->onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V

    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mYBlurRenderer:Lcom/xiaomi/renderengine/renderer/YBlurEffectRenderer;

    invoke-virtual {v0, p1}, Lcom/xiaomi/renderengine/renderer/YBlurEffectRenderer;->onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V

    iget-object p0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mColorRenderer:Lcom/xiaomi/renderengine/renderer/ColorRenderer;

    invoke-virtual {p0, p1}, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V

    return-void
.end method

.method public onAttributeUpdate(Lcom/xiaomi/renderengine/data/RendererAttribute;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attribute"
        }
    .end annotation

    iget v0, p1, Lcom/xiaomi/renderengine/data/RendererAttribute;->mType:I

    iget v1, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mType:I

    const-string v2, "AnimationRenderer"

    if-eq v0, v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAttributeUpdate exception, unsupported attr type:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/xiaomi/renderengine/data/RendererAttribute;->mType:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/xiaomi/renderengine/log/LogRE;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Lcom/xiaomi/renderengine/data/AnimRendererAttribute;

    iput-object p1, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimAttribute:Lcom/xiaomi/renderengine/data/AnimRendererAttribute;

    const-string p0, "onAttributeUpdate"

    invoke-static {v2, p0}, Lcom/xiaomi/renderengine/log/LogRE;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDetach(Lcom/xiaomi/renderengine/RenderEngine;)V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string p0, "AnimationRenderer"

    const-string p1, "skip onDetach, this renderer already be detached"

    invoke-static {p0, p1}, Lcom/xiaomi/renderengine/log/LogRE;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/xiaomi/renderengine/renderer/Renderer;->onDetach(Lcom/xiaomi/renderengine/RenderEngine;)V

    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mXBlurRenderer:Lcom/xiaomi/renderengine/renderer/XBlurEffectRenderer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/xiaomi/renderengine/renderer/XBlurEffectRenderer;->onDetach(Lcom/xiaomi/renderengine/RenderEngine;)V

    iput-object v1, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mXBlurRenderer:Lcom/xiaomi/renderengine/renderer/XBlurEffectRenderer;

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mYBlurRenderer:Lcom/xiaomi/renderengine/renderer/YBlurEffectRenderer;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/xiaomi/renderengine/renderer/YBlurEffectRenderer;->onDetach(Lcom/xiaomi/renderengine/RenderEngine;)V

    iput-object v1, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mYBlurRenderer:Lcom/xiaomi/renderengine/renderer/YBlurEffectRenderer;

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mColorRenderer:Lcom/xiaomi/renderengine/renderer/ColorRenderer;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->onDetach(Lcom/xiaomi/renderengine/RenderEngine;)V

    iput-object v1, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mColorRenderer:Lcom/xiaomi/renderengine/renderer/ColorRenderer;

    :cond_3
    iget-object p1, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->release()V

    iput-object v1, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    :cond_4
    return-void
.end method

.method public onRender(Lcom/xiaomi/renderengine/RenderParams;)I
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderParams"
        }
    .end annotation

    iget v0, p1, Lcom/xiaomi/renderengine/RenderParams;->mAnimType:I

    packed-switch v0, :pswitch_data_0

    const/4 p1, -0x1

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->recordCaptureAnimRender(Lcom/xiaomi/renderengine/RenderParams;)I

    move-result p1

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->jumpGalleryAnimRender(Lcom/xiaomi/renderengine/RenderParams;)I

    move-result p1

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->realtimeBlurRender(Lcom/xiaomi/renderengine/RenderParams;)I

    move-result p1

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->lastFrameBlurRender(Lcom/xiaomi/renderengine/RenderParams;)I

    move-result p1

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->nightCaptureAnimRender(Lcom/xiaomi/renderengine/RenderParams;)I

    move-result p1

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p1}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->normalCaptureAnimRender(Lcom/xiaomi/renderengine/RenderParams;)I

    move-result p1

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, p1}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->switchModeAnimRender(Lcom/xiaomi/renderengine/RenderParams;)I

    move-result p1

    :goto_0
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimRenderCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimRenderCount:I

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startAnimation()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimRenderCount:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->mAnimStartTime:J

    const-string p0, "AnimationRenderer"

    const-string v0, "startAnimation"

    invoke-static {p0, v0}, Lcom/xiaomi/renderengine/log/LogRE;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
