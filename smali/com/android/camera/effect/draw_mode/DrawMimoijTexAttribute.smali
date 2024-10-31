.class public Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;
.super Lcom/android/camera/effect/draw_mode/DrawAttribute;


# instance fields
.field public mIsSnapshot:Z

.field public mIsTextureOES:Z

.field public mMvpTransform:[F

.field public mRotation:I

.field public mTexId:I

.field public mTextureHeight:I

.field public mTextureTransform:[F

.field public mTextureWidth:I

.field public mViewHeight:I

.field public mViewWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/effect/draw_mode/DrawAttribute;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mTextureTransform:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mMvpTransform:[F

    const/16 v0, 0xd

    iput v0, p0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    return-void
.end method

.method public constructor <init>(IIIIIZ)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "texId",
            "viewWidth",
            "viewHeight",
            "textureWidth",
            "textureHeight",
            "isSnapshot"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/camera/effect/draw_mode/DrawAttribute;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mTextureTransform:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mMvpTransform:[F

    iput p2, p0, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mViewWidth:I

    iput p3, p0, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mViewHeight:I

    iput p4, p0, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mTextureWidth:I

    iput p5, p0, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mTextureHeight:I

    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mTexId:I

    const/16 p1, 0xd

    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    iput-boolean p6, p0, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mIsSnapshot:Z

    return-void
.end method


# virtual methods
.method public init(I[F[FII)Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;
    .locals 1
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
            "textureTransform",
            "mvpTransform",
            "w",
            "h"
        }
    .end annotation

    const/16 v0, 0xd

    iput v0, p0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mTexId:I

    iput-object p2, p0, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mTextureTransform:[F

    iput-object p3, p0, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mMvpTransform:[F

    iput p4, p0, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mViewWidth:I

    iput p5, p0, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mViewHeight:I

    return-object p0
.end method

.method public init(I[F[FIIZ)Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "texId",
            "textureTransform",
            "mvpTransform",
            "w",
            "h",
            "isTextureOES"
        }
    .end annotation

    iput-boolean p6, p0, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mIsTextureOES:Z

    const/16 p6, 0xd

    iput p6, p0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mTexId:I

    iput-object p2, p0, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mTextureTransform:[F

    iput-object p3, p0, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mMvpTransform:[F

    iput p4, p0, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mViewWidth:I

    iput p5, p0, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mViewHeight:I

    return-object p0
.end method
