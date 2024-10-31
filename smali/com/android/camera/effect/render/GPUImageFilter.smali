.class public Lcom/android/camera/effect/render/GPUImageFilter;
.super Ljava/lang/Object;


# static fields
.field private static final NO_FILTER_FRAGMENT_SHADER:Ljava/lang/String; = "varying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}"

.field public static final NO_FILTER_VERTEX_SHADER:Ljava/lang/String; = "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

.field private static final TAG:Ljava/lang/String; = "GPUImageFilter"


# instance fields
.field private final mFragmentShader:Ljava/lang/String;

.field public mFrameBufferTextures:[I

.field public mFrameBuffers:[I

.field public mFrameHeight:I

.field public mFrameWidth:I

.field public mGLAttribPosition:I

.field public mGLAttribTextureCoordinate:I

.field public mGLCubeBuffer:Ljava/nio/FloatBuffer;

.field public mGLProgId:I

.field public mGLTextureBuffer:Ljava/nio/FloatBuffer;

.field public mGLUniformTexture:I

.field public mIsInitialized:Z

.field public mOutputHeight:I

.field public mOutputWidth:I

.field private final mRunOnDraw:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public mTextureId:I

.field private final mVertexShader:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vertexShader",
            "fragmentShader"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mTextureId:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mFrameBuffers:[I

    iput-object v1, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mFrameBufferTextures:[I

    iput v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mFrameWidth:I

    iput v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mFrameHeight:I

    if-nez p1, :cond_0

    const-string p1, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    :cond_0
    if-nez p2, :cond_1

    const-string/jumbo p2, "varying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}"

    :cond_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mRunOnDraw:Ljava/util/LinkedList;

    iput-object p1, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mVertexShader:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mFragmentShader:Ljava/lang/String;

    sget-object p1, Lcom/android/camera/effect/render/TextureRotationUtil;->CUBE:[F

    array-length p2, p1

    mul-int/lit8 p2, p2, 0x4

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    sget-object p1, Lcom/android/camera/effect/render/TextureRotationUtil;->TEXTURE_NO_ROTATION:[F

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    sget-object p0, Lcom/android/camera/effect/render/Rotation;->NORMAL:Lcom/android/camera/effect/render/Rotation;

    const/4 v0, 0x1

    invoke-static {p0, p2, v0}, Lcom/android/camera/effect/render/TextureRotationUtil;->getRotation(Lcom/android/camera/effect/render/Rotation;ZZ)[F

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mIsInitialized:Z

    iget v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLProgId:I

    const-string v1, "GPUImageFilter"

    invoke-static {v0, v1}, Lcom/xiaomi/gl/MIGL;->glDeleteProgram(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/effect/render/GPUImageFilter;->onDestroy()V

    return-void
.end method

.method public destroyFrameBuffers()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mFrameBufferTextures:[I

    const/4 v1, 0x0

    const-string v2, "GPUImageFilter"

    if-eqz v0, :cond_0

    invoke-static {v0, v2}, Lcom/xiaomi/gl/MIGL;->glDeleteTextures([ILjava/lang/String;)V

    iput-object v1, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mFrameBufferTextures:[I

    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mFrameBuffers:[I

    if-eqz v0, :cond_1

    invoke-static {v0, v2}, Lcom/xiaomi/gl/MIGL;->glDeleteFramebuffers([ILjava/lang/String;)V

    iput-object v1, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mFrameBuffers:[I

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mFrameWidth:I

    iput v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mFrameHeight:I

    return-void
.end method

.method public getProgram()I
    .locals 0

    iget p0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLProgId:I

    return p0
.end method

.method public init()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/effect/render/GPUImageFilter;->onInit()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mIsInitialized:Z

    invoke-virtual {p0}, Lcom/android/camera/effect/render/GPUImageFilter;->onInitialized()V

    return-void
.end method

.method public isInitialized()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mIsInitialized:Z

    return p0
.end method

.method public onDestroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/effect/render/GPUImageFilter;->destroyFrameBuffers()V

    return-void
.end method

.method public onDisplaySizeChanged(II)V
    .locals 0
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

    iput p1, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mOutputWidth:I

    iput p2, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mOutputHeight:I

    return-void
.end method

.method public onDrawArraysAfter()V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    return-void
.end method

.method public onDrawArraysPre()V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    return-void
.end method

.method public onDrawFrame(I)I
    .locals 9
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textureId"
        }
    .end annotation

    iget v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLProgId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    invoke-virtual {p0}, Lcom/android/camera/effect/render/GPUImageFilter;->runPendingOnDrawTasks()V

    iget-boolean v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mIsInitialized:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v3, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLAttribPosition:I

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLAttribPosition:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v3, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLAttribTextureCoordinate:I

    iget-object v8, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLAttribTextureCoordinate:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/16 v0, 0xde1

    if-eq p1, v1, :cond_1

    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget p1, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLUniformTexture:I

    invoke-static {p1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/effect/render/GPUImageFilter;->onDrawArraysPre()V

    const/4 p1, 0x5

    const/4 v1, 0x4

    invoke-static {p1, v2, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget p1, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLAttribPosition:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget p1, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLAttribTextureCoordinate:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-virtual {p0}, Lcom/android/camera/effect/render/GPUImageFilter;->onDrawArraysAfter()V

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 p0, 0x1

    return p0
.end method

.method public onDrawFrame(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "textureId",
            "cubeBuffer",
            "textureBuffer"
        }
    .end annotation

    iget v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLProgId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    invoke-virtual {p0}, Lcom/android/camera/effect/render/GPUImageFilter;->runPendingOnDrawTasks()V

    iget-boolean v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mIsInitialized:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v2, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLAttribPosition:I

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, p2

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget p2, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLAttribPosition:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-virtual {p3, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v2, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLAttribTextureCoordinate:I

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget p2, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLAttribTextureCoordinate:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/16 p2, 0xde1

    if-eq p1, v1, :cond_1

    const p3, 0x84c0

    invoke-static {p3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget p1, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLUniformTexture:I

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/effect/render/GPUImageFilter;->onDrawArraysPre()V

    const/4 p1, 0x5

    const/4 p3, 0x4

    invoke-static {p1, v0, p3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget p1, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLAttribPosition:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget p1, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLAttribTextureCoordinate:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-virtual {p0}, Lcom/android/camera/effect/render/GPUImageFilter;->onDrawArraysAfter()V

    invoke-static {p2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 p0, 0x1

    return p0
.end method

.method public onDrawFrame(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cubeBuffer",
            "textureBuffer"
        }
    .end annotation

    iget v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mTextureId:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/camera/effect/render/GPUImageFilter;->onDrawFrame(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I

    move-result p0

    return p0
.end method

.method public onInit()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mVertexShader:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mFragmentShader:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->loadProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLProgId:I

    const-string/jumbo v1, "position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLAttribPosition:I

    iget v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLProgId:I

    const-string v1, "inputImageTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLUniformTexture:I

    iget v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLProgId:I

    const-string v1, "inputTextureCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mGLAttribTextureCoordinate:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mIsInitialized:Z

    return-void
.end method

.method public onInitialized()V
    .locals 0

    return-void
.end method

.method public runOnDraw(Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mRunOnDraw:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mRunOnDraw:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public runPendingOnDrawTasks()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mRunOnDraw:Ljava/util/LinkedList;

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mRunOnDraw:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/effect/render/GPUImageFilter;->mRunOnDraw:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
