.class public Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "FBOUtils"


# instance fields
.field private fboHeight:I

.field private fboId:[I

.field private fboTex:[I

.field private fboWidth:I

.field private mFboId:[I

.field private mMimojiRender:Lcom/xiaomi/mimoji/common/widget/MimojiRender;

.field private mOriginViewPort:[I

.field private num:I

.field private programTexture2d:Lcom/faceunity/pta_helper/gles/ProgramTexture2d;

.field private programTextureOES:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/ProgramTextureOES;

.field private renderBufferId:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->mOriginViewPort:[I

    const/4 v0, 0x1

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->mFboId:[I

    new-instance v1, Lcom/xiaomi/mimoji/common/widget/MimojiRender;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/xiaomi/mimoji/common/widget/MimojiRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object v1, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->mMimojiRender:Lcom/xiaomi/mimoji/common/widget/MimojiRender;

    iput v0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->num:I

    return-void
.end method


# virtual methods
.method public bindFrameBufferInfo()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->fboId:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const v2, 0x8d40

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->fboTex:[I

    aget p0, p0, v1

    const v0, 0x8ce0

    const/16 v3, 0xde1

    invoke-static {v2, v0, v3, p0, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    return-void
.end method

.method public createFBO(II)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v10, p1

    move/from16 v11, p2

    iget-object v1, v0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->fboTex:[I

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->fboWidth:I

    if-ne v1, v10, :cond_0

    iget v1, v0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->fboHeight:I

    if-eq v1, v11, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->deleteFBO()V

    :cond_1
    iput v10, v0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->fboWidth:I

    iput v11, v0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->fboHeight:I

    iget-object v1, v0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->fboTex:[I

    if-nez v1, :cond_2

    iget v1, v0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->num:I

    new-array v2, v1, [I

    iput-object v2, v0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->renderBufferId:[I

    const-string v2, "FBOUtils"

    invoke-static {v1, v2}, Lcom/xiaomi/gl/MIGL;->glGenFramebuffers(ILjava/lang/String;)[I

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->fboId:[I

    iget v1, v0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->num:I

    invoke-static {v1, v2}, Lcom/xiaomi/gl/MIGL;->glGenTextures(ILjava/lang/String;)[I

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->fboTex:[I

    iget v1, v0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->num:I

    invoke-static {v1, v2}, Lcom/xiaomi/gl/MIGL;->glGenRenderbuffers(ILjava/lang/String;)[I

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->renderBufferId:[I

    const/4 v12, 0x0

    move v13, v12

    :goto_0
    iget v1, v0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->num:I

    if-ge v13, v1, :cond_2

    iget-object v1, v0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->fboId:[I

    aget v1, v1, v13

    const v14, 0x8d40

    invoke-static {v14, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object v1, v0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->fboTex:[I

    aget v1, v1, v13

    const/16 v15, 0xde1

    invoke-static {v15, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 v3, 0x1908

    const/4 v6, 0x0

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    const/4 v9, 0x0

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v1, 0x2802

    const v2, 0x812f

    invoke-static {v15, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2803

    invoke-static {v15, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2800

    const/16 v2, 0x2601

    invoke-static {v15, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2801

    invoke-static {v15, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    iget-object v1, v0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->renderBufferId:[I

    aget v1, v1, v13

    const v2, 0x8d41

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    const v1, 0x81a5

    invoke-static {v2, v1, v10, v11}, Landroid/opengl/GLES20;->glRenderbufferStorage(IIII)V

    const v1, 0x8ce0

    iget-object v3, v0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->fboTex:[I

    aget v3, v3, v13

    invoke-static {v14, v1, v15, v3, v12}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    const v1, 0x8d00

    iget-object v3, v0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->renderBufferId:[I

    aget v3, v3, v13

    invoke-static {v14, v1, v2, v3}, Landroid/opengl/GLES20;->glFramebufferRenderbuffer(IIII)V

    invoke-static {v15, v12}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v2, v12}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    invoke-static {v14, v12}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public deleteFBO()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->fboId:[I

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->fboTex:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->renderBufferId:[I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "FBOUtils"

    invoke-static {v0, v1}, Lcom/xiaomi/gl/MIGL;->glDeleteFramebuffers([ILjava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->fboTex:[I

    invoke-static {v0, v1}, Lcom/xiaomi/gl/MIGL;->glDeleteTextures([ILjava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->renderBufferId:[I

    invoke-static {v0, v1}, Lcom/xiaomi/gl/MIGL;->glDeleteRenderbuffers([ILjava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->fboId:[I

    iput-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->fboTex:[I

    iput-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->renderBufferId:[I

    :cond_1
    :goto_0
    return-void
.end method

.method public drawFBO(Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mMimoijTexAttribute"
        }
    .end annotation

    iget v0, p1, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mViewWidth:I

    iget v1, p1, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mViewHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->createFBO(II)V

    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->mFboId:[I

    const v1, 0x8ca6

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->mOriginViewPort:[I

    const/16 v1, 0xba2

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->fboId:[I

    aget v0, v0, v2

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget v0, p1, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mViewWidth:I

    iget v3, p1, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mViewHeight:I

    invoke-static {v2, v2, v0, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->mMimojiRender:Lcom/xiaomi/mimoji/common/widget/MimojiRender;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/mimoji/common/widget/MimojiRender;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/xiaomi/mimoji/common/widget/MimojiRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->mMimojiRender:Lcom/xiaomi/mimoji/common/widget/MimojiRender;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->mMimojiRender:Lcom/xiaomi/mimoji/common/widget/MimojiRender;

    invoke-virtual {v0, p1}, Lcom/xiaomi/mimoji/common/widget/MimojiRender;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    iget-object p1, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->mFboId:[I

    aget p1, p1, v2

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object p1, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->mOriginViewPort:[I

    aget v0, p1, v2

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v3, 0x2

    aget v3, p1, v3

    const/4 v4, 0x3

    aget p1, p1, v4

    invoke-static {v0, v1, v3, p1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->fboTex:[I

    aget p0, p0, v2

    return p0
.end method

.method public drawFBO([I[FIIZ)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "mTextureId",
            "mvp",
            "width",
            "height",
            "isFrontCamera"
        }
    .end annotation

    invoke-virtual {p0, p3, p4}, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->createFBO(II)V

    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->mFboId:[I

    const v1, 0x8ca6

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->mOriginViewPort:[I

    const/16 v1, 0xba2

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->fboId:[I

    aget v0, v0, v2

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-static {v2, v2, p3, p4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->programTextureOES:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/ProgramTextureOES;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/ProgramTextureOES;

    invoke-direct {v0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/ProgramTextureOES;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->programTextureOES:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/ProgramTextureOES;

    :cond_0
    if-eqz p5, :cond_1

    invoke-static {}, Lcom/xiaomi/mimoji/common/utils/MatrixUtil;->getFrontCropTextureMatrix()[F

    move-result-object p5

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/xiaomi/mimoji/common/utils/MatrixUtil;->getBackCropTextureMatrix()[F

    move-result-object p5

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->programTextureOES:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/ProgramTextureOES;

    aget v3, p1, v2

    sget-object v4, Lcom/faceunity/pta_helper/gles/core/GlUtil;->IDENTITY_MATRIX:[F

    invoke-virtual {v0, v3, p5, v4}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/ProgramTextureOES;->drawFrame(I[F[F)V

    div-int/lit8 p5, p3, 0x2

    invoke-static {p5, v2, p3, p4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object p3, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->programTexture2d:Lcom/faceunity/pta_helper/gles/ProgramTexture2d;

    if-nez p3, :cond_2

    new-instance p3, Lcom/faceunity/pta_helper/gles/ProgramTexture2d;

    invoke-direct {p3}, Lcom/faceunity/pta_helper/gles/ProgramTexture2d;-><init>()V

    iput-object p3, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->programTexture2d:Lcom/faceunity/pta_helper/gles/ProgramTexture2d;

    :cond_2
    iget-object p3, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->programTexture2d:Lcom/faceunity/pta_helper/gles/ProgramTexture2d;

    const/4 p4, 0x1

    aget p1, p1, p4

    invoke-static {}, Lcom/xiaomi/mimoji/common/utils/MatrixUtil;->getAvatarTextureMatrix()[F

    move-result-object p5

    invoke-virtual {p3, p1, p5, p2}, Lcom/faceunity/pta_helper/gles/ProgramTexture2d;->drawFrame(I[F[F)V

    iget-object p1, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->mFboId:[I

    aget p1, p1, v2

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object p1, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->mOriginViewPort:[I

    aget p2, p1, v2

    aget p3, p1, p4

    const/4 p4, 0x2

    aget p4, p1, p4

    const/4 p5, 0x3

    aget p1, p1, p5

    invoke-static {p2, p3, p4, p1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->fboTex:[I

    aget p0, p0, v2

    return p0
.end method

.method public release()V
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->deleteFBO()V

    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->mMimojiRender:Lcom/xiaomi/mimoji/common/widget/MimojiRender;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/mimoji/common/widget/MimojiRender;->destroy()V

    iput-object v1, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->mMimojiRender:Lcom/xiaomi/mimoji/common/widget/MimojiRender;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->programTextureOES:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/ProgramTextureOES;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/core/Program;->release()V

    iput-object v1, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->programTextureOES:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/ProgramTextureOES;

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->programTexture2d:Lcom/faceunity/pta_helper/gles/ProgramTexture2d;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/faceunity/pta_helper/gles/core/Program;->release()V

    iput-object v1, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->programTexture2d:Lcom/faceunity/pta_helper/gles/ProgramTexture2d;

    :cond_2
    return-void
.end method

.method public unbindFrameBufferInfo()V
    .locals 2

    const v0, 0x8d40

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-virtual {p0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;->deleteFBO()V

    return-void
.end method
