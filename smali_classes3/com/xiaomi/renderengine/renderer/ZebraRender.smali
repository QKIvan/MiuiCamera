.class public Lcom/xiaomi/renderengine/renderer/ZebraRender;
.super Lcom/xiaomi/renderengine/renderer/Renderer;


# static fields
.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision highp float; \nuniform samplerExternalOES sTexture; \nvarying vec2 vTexCoord; \nuniform vec2 uSize; \nuniform vec2 uStep; \nuniform float uWidth; \nuniform float uGap; \nuniform float uOffset; \nuniform float uAlpha; \nuniform vec3 uOverColor; \nuniform vec3 uUnderColor; \nuniform float uOverExposure; \nuniform float uUnderExposure; \nfloat smoothstep_pulse(float e0, float e1, float e2, float e3, float x) {\n    return smoothstep(e0,e1,x) - smoothstep(e2,e3,x);\n}\nvoid main() { \n    vec3 color = texture2D(sTexture, vTexCoord).rgb; \n    vec3 factor = vec3(0.2125, 0.7154, 0.0721); \n    float Y = dot(color, factor); \n    vec2 coord = vTexCoord * uSize; // convert to world coordinate \n    float x = coord.x + uOffset; \n    float y = coord.y; \n    float diff; \n    if (y > x) { \n        diff = y - x; \n    } else { \n        diff = x - y + uWidth; \n    } \n    float smoothWidth = uWidth * 0.25; \n    float eachWidth = mod(diff, uGap + uWidth);\n    if (eachWidth < uWidth) { \n        if (Y >= uOverExposure) { \n            vec4 overlay = vec4(uOverColor, Y)*uAlpha; \n            vec3 mixed = mix(color,overlay.rgb,smoothstep_pulse(0.0,0.25,0.75,1.0,eachWidth/uWidth)); \n            gl_FragColor = vec4(mixed,1.0); \n        } else if (Y < uUnderExposure) { \n            vec4 overlay = vec4(uUnderColor, Y)*uAlpha; \n            vec3 mixed = mix(color,overlay.rgb,smoothstep_pulse(0.0,0.25,0.75,1.0,eachWidth/uWidth)); \n            gl_FragColor = vec4(mixed,1.0); \n        } else { \n            //gl_FragColor = vec4(color, 1)*uAlpha; \n        } \n    } else { \n        //gl_FragColor = vec4(color, 1)*uAlpha; \n    } \n}"

.field private static final TAG:Ljava/lang/String; = "ZebraRender"

.field private static final TEXTURES_OES:[F

.field private static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMVPMatrix; \nuniform mat4 uSTMatrix; \nuniform float u_PointSize; \nattribute vec3 aPosition; \nattribute vec2 aTexCoord; \nvarying vec2 vTexCoord; \nvoid main() \n{ \ngl_Position = uMVPMatrix * vec4(aPosition,1); \nvTexCoord = (uSTMatrix * vec4(aTexCoord,0,1)).st; \ngl_PointSize = u_PointSize; \n} \n"

.field private static final VERTICES:[F


# instance fields
.field private mAttributePositionH:I

.field private mAttributeTexCoorH:I

.field public mGap:F

.field public mOffset:F

.field public mOverColor:I

.field public mOverExposure:F

.field private mProgram:I

.field public mTexCoorBuffer:Ljava/nio/FloatBuffer;

.field public mUnderColor:I

.field public mUnderExposure:F

.field private mUniformAlphaH:I

.field public mUniformEffectParameterH:I

.field public mUniformGapH:I

.field public mUniformInvertRectH:I

.field private mUniformMVPMatrixH:I

.field public mUniformOffsetH:I

.field public mUniformOverColorH:I

.field public mUniformOverExposureH:I

.field private mUniformSTMatrixH:I

.field public mUniformSizeH:I

.field public mUniformStepH:I

.field private mUniformTextureH:I

.field public mUniformUnderColorH:I

.field public mUniformUnderExposureH:I

.field public mUniformWidthH:I

.field private mVertexBuffer:Ljava/nio/FloatBuffer;

.field public mWidth:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/xiaomi/renderengine/renderer/ZebraRender;->VERTICES:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->TEXTURES_OES:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/renderengine/renderer/Renderer;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mProgram:I

    const v0, 0x3f7d70a4    # 0.99f

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mOverExposure:F

    const v0, 0x3c23d70a    # 0.01f

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUnderExposure:F

    const v0, 0xcd5c60

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mOverColor:I

    const v0, 0x6db2f4

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUnderColor:I

    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mWidth:F

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mGap:F

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mOffset:F

    const/16 v0, 0xc8

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mType:I

    return-void
.end method


# virtual methods
.method public initAttributePointer()V
    .locals 13

    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->VERTICES:[F

    invoke-static {v0}, Lcom/xiaomi/renderengine/gl/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_1

    sget-object v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->TEXTURES_OES:[F

    invoke-static {v0}, Lcom/xiaomi/renderengine/gl/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    :cond_1
    iget v1, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mAttributePositionH:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    iget-object v6, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v7, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mAttributeTexCoorH:I

    const/4 v8, 0x2

    const/16 v9, 0x1406

    const/4 v10, 0x0

    const/16 v11, 0x8

    iget-object v12, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v7 .. v12}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    return-void
.end method

.method public initShader()V
    .locals 2

    const-string v0, "uniform mat4 uMVPMatrix; \nuniform mat4 uSTMatrix; \nuniform float u_PointSize; \nattribute vec3 aPosition; \nattribute vec2 aTexCoord; \nvarying vec2 vTexCoord; \nvoid main() \n{ \ngl_Position = uMVPMatrix * vec4(aPosition,1); \nvTexCoord = (uSTMatrix * vec4(aTexCoord,0,1)).st; \ngl_PointSize = u_PointSize; \n} \n"

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision highp float; \nuniform samplerExternalOES sTexture; \nvarying vec2 vTexCoord; \nuniform vec2 uSize; \nuniform vec2 uStep; \nuniform float uWidth; \nuniform float uGap; \nuniform float uOffset; \nuniform float uAlpha; \nuniform vec3 uOverColor; \nuniform vec3 uUnderColor; \nuniform float uOverExposure; \nuniform float uUnderExposure; \nfloat smoothstep_pulse(float e0, float e1, float e2, float e3, float x) {\n    return smoothstep(e0,e1,x) - smoothstep(e2,e3,x);\n}\nvoid main() { \n    vec3 color = texture2D(sTexture, vTexCoord).rgb; \n    vec3 factor = vec3(0.2125, 0.7154, 0.0721); \n    float Y = dot(color, factor); \n    vec2 coord = vTexCoord * uSize; // convert to world coordinate \n    float x = coord.x + uOffset; \n    float y = coord.y; \n    float diff; \n    if (y > x) { \n        diff = y - x; \n    } else { \n        diff = x - y + uWidth; \n    } \n    float smoothWidth = uWidth * 0.25; \n    float eachWidth = mod(diff, uGap + uWidth);\n    if (eachWidth < uWidth) { \n        if (Y >= uOverExposure) { \n            vec4 overlay = vec4(uOverColor, Y)*uAlpha; \n            vec3 mixed = mix(color,overlay.rgb,smoothstep_pulse(0.0,0.25,0.75,1.0,eachWidth/uWidth)); \n            gl_FragColor = vec4(mixed,1.0); \n        } else if (Y < uUnderExposure) { \n            vec4 overlay = vec4(uUnderColor, Y)*uAlpha; \n            vec3 mixed = mix(color,overlay.rgb,smoothstep_pulse(0.0,0.25,0.75,1.0,eachWidth/uWidth)); \n            gl_FragColor = vec4(mixed,1.0); \n        } else { \n            //gl_FragColor = vec4(color, 1)*uAlpha; \n        } \n    } else { \n        //gl_FragColor = vec4(color, 1)*uAlpha; \n    } \n}"

    invoke-static {v0, v1}, Lcom/xiaomi/renderengine/gl/GLUtils;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mProgram:I

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mProgram:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformMVPMatrixH:I

    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mProgram:I

    const-string v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformSTMatrixH:I

    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mProgram:I

    const-string v1, "sTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformTextureH:I

    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mProgram:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mAttributePositionH:I

    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mProgram:I

    const-string v1, "aTexCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mAttributeTexCoorH:I

    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mProgram:I

    const-string v1, "uAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformAlphaH:I

    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mProgram:I

    const-string v1, "uStep"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformStepH:I

    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mProgram:I

    const-string v1, "uInvertRect"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformInvertRectH:I

    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mProgram:I

    const-string v1, "uEffectArray"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformEffectParameterH:I

    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mProgram:I

    const-string v1, "uSize"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformSizeH:I

    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mProgram:I

    const-string v1, "uOverExposure"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformOverExposureH:I

    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mProgram:I

    const-string v1, "uUnderExposure"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformUnderExposureH:I

    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mProgram:I

    const-string v1, "uOverColor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformOverColorH:I

    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mProgram:I

    const-string v1, "uUnderColor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformUnderColorH:I

    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mProgram:I

    const-string v1, "uWidth"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformWidthH:I

    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mProgram:I

    const-string v1, "uGap"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformGapH:I

    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mProgram:I

    const-string v1, "uOffset"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformOffsetH:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": mProgram = 0"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initShaderValue(ILcom/xiaomi/renderengine/gl/GLState;II[F)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "textureId",
            "glState",
            "width",
            "height",
            "texTrans"
        }
    .end annotation

    move-object v0, p0

    iget v1, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mAttributePositionH:I

    iget-object v6, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v7, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mAttributeTexCoorH:I

    iget-object v12, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    const/4 v8, 0x2

    const/16 v9, 0x1406

    const/4 v10, 0x0

    const/16 v11, 0x8

    invoke-static/range {v7 .. v12}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v1, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mAttributePositionH:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v1, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mAttributeTexCoorH:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v1, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformMVPMatrixH:I

    invoke-virtual {p2}, Lcom/xiaomi/renderengine/gl/GLState;->getFinalMatrix()[F

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v3, v4, v2, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v1, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformSTMatrixH:I

    move-object/from16 v2, p5

    invoke-static {v1, v3, v4, v2, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const v1, 0x8d65

    move v2, p1

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v1, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformTextureH:I

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v1, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformAlphaH:I

    invoke-virtual {p2}, Lcom/xiaomi/renderengine/gl/GLState;->getAlpha()F

    move-result v2

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v1, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformStepH:I

    move/from16 v2, p3

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v4, v3, v2

    move/from16 v5, p4

    int-to-float v5, v5

    div-float v6, v3, v5

    invoke-static {v1, v4, v6}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget v1, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformSizeH:I

    invoke-static {v1, v2, v5}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget v1, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformOverExposureH:I

    iget v2, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mOverExposure:F

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v1, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformUnderExposureH:I

    iget v2, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUnderExposure:F

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v1, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformOverColorH:I

    iget v2, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mOverColor:I

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v2, v4

    iget v5, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mOverColor:I

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    iget v6, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mOverColor:I

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    invoke-static {v1, v2, v5, v6}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    iget v1, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformUnderColorH:I

    iget v2, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUnderColor:I

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    iget v5, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUnderColor:I

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    iget v6, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUnderColor:I

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    invoke-static {v1, v2, v5, v6}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    iget v1, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformWidthH:I

    iget v2, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mWidth:F

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v1, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformGapH:I

    iget v2, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mGap:F

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v1, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mUniformOffsetH:I

    iget v0, v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mOffset:F

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    move-object v0, p2

    invoke-virtual {p2, v3}, Lcom/xiaomi/renderengine/gl/GLState;->setBlendAlpha(F)V

    invoke-virtual {p2}, Lcom/xiaomi/renderengine/gl/GLState;->getAlpha()F

    move-result v1

    invoke-virtual {p2}, Lcom/xiaomi/renderengine/gl/GLState;->getBlendAlpha()F

    move-result v0

    const v2, 0x3f733333    # 0.95f

    cmpg-float v1, v1, v2

    const/16 v2, 0xbe2

    if-ltz v1, :cond_1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Landroid/opengl/GLES20;->glDisable(I)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    :goto_1
    return-void
.end method

.method public onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V
    .locals 0
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

    invoke-super {p0, p1}, Lcom/xiaomi/renderengine/renderer/Renderer;->onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/renderer/ZebraRender;->initShader()V

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/renderer/ZebraRender;->initAttributePointer()V

    return-void
.end method

.method public onDetach(Lcom/xiaomi/renderengine/RenderEngine;)V
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

    iget p1, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mProgram:I

    const-string v0, "ZebraRender"

    invoke-static {p1, v0}, Lcom/xiaomi/gl/MIGL;->glDeleteProgram(ILjava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mProgram:I

    return-void
.end method

.method public onRender(Lcom/xiaomi/renderengine/RenderParams;)I
    .locals 11
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

    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mOffset:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mOffset:F

    iget-object v0, p1, Lcom/xiaomi/renderengine/RenderParams;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/gl/GLState;->pushState()V

    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glIsProgram(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid shader program. shaderProgram:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mProgram:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ZebraRender"

    invoke-static {p1, p0}, Lcom/xiaomi/renderengine/log/LogRE;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_0
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mAttributePositionH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mAttributeTexCoorH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p1, Lcom/xiaomi/renderengine/RenderParams;->mWidth:I

    iget v2, p1, Lcom/xiaomi/renderengine/RenderParams;->mHeight:I

    const/4 v3, 0x0

    invoke-static {v3, v3, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object v0, p1, Lcom/xiaomi/renderengine/RenderParams;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    iget v2, p1, Lcom/xiaomi/renderengine/RenderParams;->mWidth:I

    int-to-float v2, v2

    iget v4, p1, Lcom/xiaomi/renderengine/RenderParams;->mHeight:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v2, v5, v4}, Lcom/xiaomi/renderengine/gl/GLState;->ortho(FFFF)V

    iget-object v0, p1, Lcom/xiaomi/renderengine/RenderParams;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    iget v2, p1, Lcom/xiaomi/renderengine/RenderParams;->mWidth:I

    int-to-float v2, v2

    iget v4, p1, Lcom/xiaomi/renderengine/RenderParams;->mHeight:I

    int-to-float v4, v4

    invoke-virtual {v0, v2, v4, v1}, Lcom/xiaomi/renderengine/gl/GLState;->scale(FFF)V

    iget v6, p1, Lcom/xiaomi/renderengine/RenderParams;->mOesTex:I

    iget-object v7, p1, Lcom/xiaomi/renderengine/RenderParams;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    iget v8, p1, Lcom/xiaomi/renderengine/RenderParams;->mWidth:I

    iget v9, p1, Lcom/xiaomi/renderengine/RenderParams;->mHeight:I

    iget-object v10, p1, Lcom/xiaomi/renderengine/RenderParams;->mTexTrans:[F

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/xiaomi/renderengine/renderer/ZebraRender;->initShaderValue(ILcom/xiaomi/renderengine/gl/GLState;II[F)V

    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mAttributePositionH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget p0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mAttributeTexCoorH:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget-object p0, p1, Lcom/xiaomi/renderengine/RenderParams;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/gl/GLState;->popState()V

    iget-object p0, p1, Lcom/xiaomi/renderengine/RenderParams;->mFbOut:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getTextureId()I

    move-result p0

    return p0
.end method

.method public onRenderToSurface(Lcom/xiaomi/renderengine/RenderParams;IILandroid/graphics/Rect;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "renderParams",
            "width",
            "height",
            "rect"
        }
    .end annotation

    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mOffset:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mOffset:F

    iget-object v0, p1, Lcom/xiaomi/renderengine/RenderParams;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/gl/GLState;->pushState()V

    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glIsProgram(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid shader program. shaderProgram:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mProgram:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ZebraRender"

    invoke-static {p1, p0}, Lcom/xiaomi/renderengine/log/LogRE;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mAttributePositionH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mAttributeTexCoorH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v0, 0x0

    invoke-static {v0, v0, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object v2, p1, Lcom/xiaomi/renderengine/RenderParams;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    int-to-float p2, p2

    int-to-float p3, p3

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p2, v3, p3}, Lcom/xiaomi/renderengine/gl/GLState;->ortho(FFFF)V

    iget-object p2, p1, Lcom/xiaomi/renderengine/RenderParams;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    iget p3, p4, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    iget v2, p4, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p2, p3, v2, v3}, Lcom/xiaomi/renderengine/gl/GLState;->translate(FFF)V

    iget-object p2, p1, Lcom/xiaomi/renderengine/RenderParams;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p2, p3, p4, v1}, Lcom/xiaomi/renderengine/gl/GLState;->scale(FFF)V

    iget v3, p1, Lcom/xiaomi/renderengine/RenderParams;->mOesTex:I

    iget-object v4, p1, Lcom/xiaomi/renderengine/RenderParams;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    iget v5, p1, Lcom/xiaomi/renderengine/RenderParams;->mWidth:I

    iget v6, p1, Lcom/xiaomi/renderengine/RenderParams;->mHeight:I

    iget-object v7, p1, Lcom/xiaomi/renderengine/RenderParams;->mTexTrans:[F

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/renderengine/renderer/ZebraRender;->initShaderValue(ILcom/xiaomi/renderengine/gl/GLState;II[F)V

    const/4 p2, 0x5

    const/4 p3, 0x4

    invoke-static {p2, v0, p3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget p2, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mAttributePositionH:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget p0, p0, Lcom/xiaomi/renderengine/renderer/ZebraRender;->mAttributeTexCoorH:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget-object p0, p1, Lcom/xiaomi/renderengine/RenderParams;->mGLState:Lcom/xiaomi/renderengine/gl/GLState;

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/gl/GLState;->popState()V

    return-void
.end method
