.class public Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;
.super Ljava/lang/Object;


# static fields
.field private static final NUM:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FBOUtils"


# instance fields
.field private fboHeight:I

.field private fboId:[I

.field private fboTex:[I

.field private fboWidth:I

.field private final mFboId:[I

.field private final mOriginViewPort:[I

.field private programCircle:Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/ProgramCircle;

.field private programTexture2d:Lcom/faceunity/pta_helper/gles/ProgramTexture2d;

.field private renderBufferId:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;->mOriginViewPort:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;->mFboId:[I

    return-void
.end method

.method private createFBO(II)V
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

    iget-object v1, v0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;->fboTex:[I

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;->fboWidth:I

    if-ne v1, v10, :cond_0

    iget v1, v0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;->fboHeight:I

    if-eq v1, v11, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;->deleteFBO()V

    :cond_1
    iput v10, v0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;->fboWidth:I

    iput v11, v0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;->fboHeight:I

    iget-object v1, v0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;->fboTex:[I

    if-nez v1, :cond_2

    const/4 v1, 0x1

    new-array v2, v1, [I

    iput-object v2, v0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;->renderBufferId:[I

    const-string v2, "FBOUtils"

    invoke-static {v1, v2}, Lcom/xiaomi/gl/MIGL;->glGenFramebuffers(ILjava/lang/String;)[I

    move-result-object v3

    iput-object v3, v0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;->fboId:[I

    invoke-static {v1, v2}, Lcom/xiaomi/gl/MIGL;->glGenTextures(ILjava/lang/String;)[I

    move-result-object v2

    iput-object v2, v0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;->fboTex:[I

    iget-object v2, v0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;->renderBufferId:[I

    const/4 v12, 0x0

    invoke-static {v1, v2, v12}, Landroid/opengl/GLES20;->glGenRenderbuffers(I[II)V

    move v13, v12

    :goto_0
    iget-object v1, v0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;->fboId:[I

    array-length v2, v1

    if-ge v13, v2, :cond_2

    aget v1, v1, v13

    const v14, 0x8d40

    invoke-static {v14, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object v1, v0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;->fboTex:[I

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

    iget-object v1, v0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;->renderBufferId:[I

    aget v1, v1, v13

    const v2, 0x8d41

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    const v1, 0x81a5

    invoke-static {v2, v1, v10, v11}, Landroid/opengl/GLES20;->glRenderbufferStorage(IIII)V

    const v1, 0x8ce0

    iget-object v3, v0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;->fboTex:[I

    aget v3, v3, v13

    invoke-static {v14, v1, v15, v3, v12}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    const v1, 0x8d00

    iget-object v3, v0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;->renderBufferId:[I

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


# virtual methods
.method public deleteFBO()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;->fboId:[I

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;->fboTex:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;->renderBufferId:[I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "FBOUtils"

    invoke-static {v0, v1}, Lcom/xiaomi/gl/MIGL;->glDeleteFramebuffers([ILjava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;->fboTex:[I

    invoke-static {v0, v1}, Lcom/xiaomi/gl/MIGL;->glDeleteTextures([ILjava/lang/String;)V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;->renderBufferId:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(I[II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;->fboId:[I

    iput-object v0, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;->fboTex:[I

    iput-object v0, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;->renderBufferId:[I

    :cond_1
    :goto_0
    return-void
.end method

.method public draw2D(III[F[F)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "texId",
            "width",
            "height",
            "texMtx",
            "mvp"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;->createFBO(II)V

    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;->mFboId:[I

    const v1, 0x8ca6

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;->mOriginViewPort:[I

    const/16 v1, 0xba2

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;->fboId:[I

    aget v0, v0, v2

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-static {v2, v2, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object p2, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;->programTexture2d:Lcom/faceunity/pta_helper/gles/ProgramTexture2d;

    if-nez p2, :cond_0

    new-instance p2, Lcom/faceunity/pta_helper/gles/ProgramTexture2d;

    invoke-direct {p2}, Lcom/faceunity/pta_helper/gles/ProgramTexture2d;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;->programTexture2d:Lcom/faceunity/pta_helper/gles/ProgramTexture2d;

    :cond_0
    iget-object p2, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;->programTexture2d:Lcom/faceunity/pta_helper/gles/ProgramTexture2d;

    invoke-virtual {p2, p1, p4, p5}, Lcom/faceunity/pta_helper/gles/ProgramTexture2d;->drawFrame(I[F[F)V

    iget-object p1, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;->mFboId:[I

    aget p1, p1, v2

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object p1, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;->mOriginViewPort:[I

    aget p2, p1, v2

    const/4 p3, 0x1

    aget p3, p1, p3

    const/4 p4, 0x2

    aget p4, p1, p4

    const/4 p5, 0x3

    aget p1, p1, p5

    invoke-static {p2, p3, p4, p1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;->fboTex:[I

    aget p0, p0, v2

    return p0
.end method

.method public drawFBO(III[F[F)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "texId",
            "width",
            "height",
            "texMtx",
            "mvp"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;->createFBO(II)V

    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;->mFboId:[I

    const v1, 0x8ca6

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;->mOriginViewPort:[I

    const/16 v1, 0xba2

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;->fboId:[I

    aget v0, v0, v2

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-static {v2, v2, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;->programCircle:Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/ProgramCircle;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/ProgramCircle;

    invoke-direct {v0, p2, p3}, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/ProgramCircle;-><init>(II)V

    iput-object v0, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;->programCircle:Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/ProgramCircle;

    :cond_0
    iget-object p2, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;->programCircle:Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/ProgramCircle;

    invoke-virtual {p2, p1, p4, p5}, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/ProgramCircle;->drawFrame(I[F[F)V

    iget-object p1, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;->mFboId:[I

    aget p1, p1, v2

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object p1, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;->mOriginViewPort:[I

    aget p2, p1, v2

    const/4 p3, 0x1

    aget p3, p1, p3

    const/4 p4, 0x2

    aget p4, p1, p4

    const/4 p5, 0x3

    aget p1, p1, p5

    invoke-static {p2, p3, p4, p1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;->fboTex:[I

    aget p0, p0, v2

    return p0
.end method

.method public release()V
    .locals 2

    const-string v0, "FBOUtils"

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/xiaomi/mimoji/mimojifu2/faceunity/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;->deleteFBO()V

    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;->programCircle:Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/ProgramCircle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/faceunity/pta_helper/gles/core/Program;->release()V

    iput-object v1, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;->programCircle:Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/ProgramCircle;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;->programTexture2d:Lcom/faceunity/pta_helper/gles/ProgramTexture2d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/faceunity/pta_helper/gles/core/Program;->release()V

    iput-object v1, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/FBOUtils;->programTexture2d:Lcom/faceunity/pta_helper/gles/ProgramTexture2d;

    :cond_1
    return-void
.end method
