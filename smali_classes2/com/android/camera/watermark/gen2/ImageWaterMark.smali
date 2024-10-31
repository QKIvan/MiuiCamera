.class public Lcom/android/camera/watermark/gen2/ImageWaterMark;
.super Lcom/android/camera/effect/renders/WaterMark;


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageWaterMark"


# instance fields
.field private mCenterX:I

.field private mCenterY:I

.field private mHeight:I

.field private mImageTexture:Lcom/android/gallery3d/ui/BitmapTexture;

.field private mIsCinematicAspectRatio:Z

.field private mPaddingX:I

.field private mPaddingY:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;IIIZ)V
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
            "image",
            "width",
            "height",
            "orientation",
            "isCinematicAspectRatio"
        }
    .end annotation

    invoke-direct {p0, p2, p3, p4}, Lcom/android/camera/effect/renders/WaterMark;-><init>(III)V

    iput-boolean p5, p0, Lcom/android/camera/watermark/gen2/ImageWaterMark;->mIsCinematicAspectRatio:Z

    if-eqz p5, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {p2, p3, p5, v0, p4}, Lcom/android/camera/watermark/gen2/WaterMarkUtil2;->calcDualCameraWatermarkLocationByCinema(IIIII)[I

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p5

    invoke-static {p2, p3, p4, p5}, Lcom/android/camera/watermark/gen2/WaterMarkUtil2;->calcDualCameraWatermarkLocation(IIII)[I

    move-result-object p2

    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "ImageWaterMark: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    new-array p5, p4, [Ljava/lang/Object;

    const-string v0, "ImageWaterMark"

    invoke-static {v0, p3, p5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    aget p3, p2, p4

    iput p3, p0, Lcom/android/camera/watermark/gen2/ImageWaterMark;->mWidth:I

    const/4 p3, 0x1

    aget p3, p2, p3

    iput p3, p0, Lcom/android/camera/watermark/gen2/ImageWaterMark;->mHeight:I

    const/4 p3, 0x2

    aget p3, p2, p3

    iput p3, p0, Lcom/android/camera/watermark/gen2/ImageWaterMark;->mPaddingX:I

    const/4 p3, 0x3

    aget p2, p2, p3

    iput p2, p0, Lcom/android/camera/watermark/gen2/ImageWaterMark;->mPaddingY:I

    new-instance p2, Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-direct {p2, p1}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p2, p0, Lcom/android/camera/watermark/gen2/ImageWaterMark;->mImageTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {p2, p4}, Lcom/android/gallery3d/ui/UploadedTexture;->setOpaque(Z)V

    invoke-direct {p0}, Lcom/android/camera/watermark/gen2/ImageWaterMark;->calcCenterAxis()V

    sget-object p1, Lcom/android/camera/Util;->sIsDumpLog:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/camera/watermark/gen2/ImageWaterMark;->print()V

    :cond_1
    return-void
.end method

.method private calcCenterAxis()V
    .locals 2

    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mOrientation:I

    if-eqz v0, :cond_3

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/camera/watermark/gen2/ImageWaterMark;->mPaddingY:I

    invoke-virtual {p0}, Lcom/android/camera/watermark/gen2/ImageWaterMark;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/watermark/gen2/ImageWaterMark;->mCenterX:I

    iget v0, p0, Lcom/android/camera/watermark/gen2/ImageWaterMark;->mPaddingX:I

    invoke-virtual {p0}, Lcom/android/camera/watermark/gen2/ImageWaterMark;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/watermark/gen2/ImageWaterMark;->mCenterY:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureWidth:I

    iget v1, p0, Lcom/android/camera/watermark/gen2/ImageWaterMark;->mPaddingX:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/watermark/gen2/ImageWaterMark;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/watermark/gen2/ImageWaterMark;->mCenterX:I

    iget v0, p0, Lcom/android/camera/watermark/gen2/ImageWaterMark;->mPaddingY:I

    invoke-virtual {p0}, Lcom/android/camera/watermark/gen2/ImageWaterMark;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/watermark/gen2/ImageWaterMark;->mCenterY:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureWidth:I

    iget v1, p0, Lcom/android/camera/watermark/gen2/ImageWaterMark;->mPaddingY:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/watermark/gen2/ImageWaterMark;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/watermark/gen2/ImageWaterMark;->mCenterX:I

    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureHeight:I

    iget v1, p0, Lcom/android/camera/watermark/gen2/ImageWaterMark;->mPaddingX:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/watermark/gen2/ImageWaterMark;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/watermark/gen2/ImageWaterMark;->mCenterY:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/camera/watermark/gen2/ImageWaterMark;->mPaddingX:I

    invoke-virtual {p0}, Lcom/android/camera/watermark/gen2/ImageWaterMark;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/watermark/gen2/ImageWaterMark;->mCenterX:I

    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureHeight:I

    iget v1, p0, Lcom/android/camera/watermark/gen2/ImageWaterMark;->mPaddingY:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/watermark/gen2/ImageWaterMark;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/watermark/gen2/ImageWaterMark;->mCenterY:I

    :goto_0
    return-void
.end method

.method private print()V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WaterMark pictureWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pictureHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " centerX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/watermark/gen2/ImageWaterMark;->mCenterX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " centerY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/watermark/gen2/ImageWaterMark;->mCenterY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " waterWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/watermark/gen2/ImageWaterMark;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " waterHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/watermark/gen2/ImageWaterMark;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " paddingX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/watermark/gen2/ImageWaterMark;->mPaddingX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " paddingY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/watermark/gen2/ImageWaterMark;->mPaddingY:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ImageWaterMark"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCenterX()I
    .locals 0

    iget p0, p0, Lcom/android/camera/watermark/gen2/ImageWaterMark;->mCenterX:I

    return p0
.end method

.method public getCenterY()I
    .locals 0

    iget p0, p0, Lcom/android/camera/watermark/gen2/ImageWaterMark;->mCenterY:I

    return p0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lcom/android/camera/watermark/gen2/ImageWaterMark;->mHeight:I

    return p0
.end method

.method public getPaddingX()I
    .locals 0

    iget p0, p0, Lcom/android/camera/watermark/gen2/ImageWaterMark;->mPaddingX:I

    return p0
.end method

.method public getPaddingY()I
    .locals 0

    iget p0, p0, Lcom/android/camera/watermark/gen2/ImageWaterMark;->mPaddingY:I

    return p0
.end method

.method public getTexture()Lcom/android/gallery3d/ui/BasicTexture;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/watermark/gen2/ImageWaterMark;->mImageTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lcom/android/camera/watermark/gen2/ImageWaterMark;->mWidth:I

    return p0
.end method
