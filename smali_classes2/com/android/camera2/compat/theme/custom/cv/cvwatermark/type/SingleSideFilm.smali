.class public Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/SingleSideFilm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/ICvWatermark;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/SingleSideFilm$DinaText;
    }
.end annotation


# static fields
.field public static final SAMPLE_DATE:Ljava/lang/String; = "v4.5.002540.1 By @\u8056\u5c0f\u718a(HolyBear)"

.field public static final SAMPLE_EXIF:Ljava/lang/String; = "23mm  f/1.9  1/1102s  ISO200"

.field public static final SAMPLE_LOCATION:Ljava/lang/String; = "33\u00b035\'16\"N  7\u00b036\'50\"W"

.field private static final TAG:Ljava/lang/String; = "Film"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createWaterNote(IILjava/lang/String;Ljava/lang/String;Z)Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/SingleSideFilm$DinaText;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "exif",
            "time",
            "isTimeOn"
        }
    .end annotation

    new-instance v0, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/SingleSideFilm$DinaText;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/SingleSideFilm$DinaText;-><init>(Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/SingleSideFilm;Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/SingleSideFilm$1;)V

    invoke-static {p1, p2}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CVWatermark;->getRatio(II)F

    move-result p1

    iput p1, v0, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/SingleSideFilm$DinaText;->ratio:F

    invoke-virtual {p0}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/SingleSideFilm;->getLogo()Ljava/lang/String;

    move-result-object p1

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    move-object p4, p1

    :goto_0
    iput-object p4, v0, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/SingleSideFilm$DinaText;->leftText:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/SingleSideFilm;->getBrand()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/SingleSideFilm$DinaText;->centerText:Ljava/lang/String;

    iput-object p3, v0, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/SingleSideFilm$DinaText;->rightText:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getBrand()Ljava/lang/String;
    .locals 1

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p0

    invoke-virtual {p0}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o00O()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "PHONE"

    :cond_0
    return-object p0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 2

    sget-object p0, LOooO0OO/OooO0oO/OooO00o/OooO0o;->OooOOOO:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "Redmi"

    :goto_0
    return-object p0
.end method

.method public getPreferencePreview(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0803e1

    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getSummary()I
    .locals 0
    .annotation build Landroidx/annotation/StringRes;
    .end annotation

    const p0, 0x7f12086b

    return p0
.end method

.method public getTitle()I
    .locals 0
    .annotation build Landroidx/annotation/StringRes;
    .end annotation

    const p0, 0x7f12086c

    return p0
.end method

.method public getWatermarkImage(Landroid/graphics/Bitmap;)Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {}, Lcom/android/camera/cache/ByteArrayPool;->getInstance()Lcom/android/camera/cache/ByteArrayPool;

    move-result-object v1

    mul-int v2, p0, v0

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/camera/cache/ByteArrayPool;->get(I)[B

    move-result-object v1

    invoke-static {}, Lcom/android/camera/cache/ByteArrayPool;->getInstance()Lcom/android/camera/cache/ByteArrayPool;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/cache/ByteArrayPool;->get(I)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-static {p1, v1, p0, v0}, Lcom/xiaomi/libyuv/YuvUtils;->RGBAToI420([B[BII)I

    invoke-static {}, Lcom/android/camera/cache/ByteArrayPool;->getInstance()Lcom/android/camera/cache/ByteArrayPool;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/camera/cache/ByteArrayPool;->put([B)V

    new-instance p1, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;

    invoke-direct {p1, v1, p0, v0}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;-><init>([BII)V

    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modeIndex"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/SingleSideFilm;->isSupport(I)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1, v1}, Lcom/android/camera/CameraSettings;->isHeicImageFormatSelectable(IZ)Lcom/android/camera/SettingUiState;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/camera/SettingUiState;->isNeed:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHeicImageFormatSelected()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimerBurstEnable()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isLiveShotOn()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentUltraPixel()Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->isRearSwitchOn()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRaw()Lcom/android/camera/data/data/config/ComponentConfigRaw;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigRaw;->isSwitchOn(I)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    const-string p1, "pref_cv_watermark_key"

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isSupport(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modeIndex"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/16 p0, 0xa3

    if-eq p1, p0, :cond_0

    const/16 p0, 0xa7

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isSupportLocation()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public processPreviewWatermark(Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkParam;)Landroid/graphics/Bitmap;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkParam;->getSrc()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkParam;->getOrientation()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkParam;->getType()I

    move-result v2

    const-string v5, ""

    if-nez v2, :cond_0

    move-object v10, v5

    goto :goto_0

    :cond_0
    const-string v2, "v4.5.002540.1 By @\u8056\u5c0f\u718a(HolyBear)"

    move-object v10, v2

    :goto_0
    invoke-virtual {p1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkParam;->getType()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const-string v5, "23mm  f/1.9  1/1102s  ISO200"

    :goto_1
    move-object v9, v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {}, Lcom/android/camera/CameraSettings;->isCvWaterMarkTimeEnabled()Z

    move-result v11

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/SingleSideFilm;->createWaterNote(IILjava/lang/String;Ljava/lang/String;Z)Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/SingleSideFilm$DinaText;

    move-result-object p0

    new-instance v2, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/pendant/ross/WaterMakerDina;

    invoke-direct {v2}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/pendant/ross/WaterMakerDina;-><init>()V

    iget v5, p0, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/SingleSideFilm$DinaText;->ratio:F

    iget-object v6, p0, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/SingleSideFilm$DinaText;->leftText:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/SingleSideFilm$DinaText;->centerText:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/SingleSideFilm$DinaText;->rightText:Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/pendant/ross/WaterMakerDina;->createWaterBimap(Landroid/graphics/Bitmap;IFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processCvWatermark: addPreviewWatermark cv cost="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Film"

    invoke-static {v1, p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public processWatermark(Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkParam;)Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;
    .locals 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkParam;->setLocationOn(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkParam;->getOriginImage()Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getYuvData()[B

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkParam;->getOriginImage()Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkParam;->getOriginImage()Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getHeight()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkParam;->getOrientation()I

    move-result v13

    rem-int/lit16 v5, v13, 0xb4

    if-eqz v5, :cond_0

    move v12, v7

    goto :goto_0

    :cond_0
    move v12, v6

    :goto_0
    if-eqz v5, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    move v5, v7

    :goto_1
    new-instance v8, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/pendant/ross/WaterMakerDina;

    invoke-direct {v8}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/pendant/ross/WaterMakerDina;-><init>()V

    invoke-virtual {v8, v12, v5}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/pendant/ross/WaterMakerDina;->getWaterHeight(II)I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkParam;->getExposureTime()J

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkParam;->getIso()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkParam;->getFocalLength35mm()S

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkParam;->getAperture()F

    move-result v1

    invoke-static {v9, v10, v14, v15, v1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CVWatermark;->getExifStr(JISF)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkParam;->getTakenTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CVWatermark;->getTimeStr(J)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkParam;->isTimestampOn()Z

    move-result v19

    move-object/from16 v14, p0

    move v15, v12

    move/from16 v16, v5

    invoke-direct/range {v14 .. v19}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/SingleSideFilm;->createWaterNote(IILjava/lang/String;Ljava/lang/String;Z)Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/SingleSideFilm$DinaText;

    move-result-object v1

    iget v9, v1, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/SingleSideFilm$DinaText;->ratio:F

    iget-object v10, v1, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/SingleSideFilm$DinaText;->leftText:Ljava/lang/String;

    iget-object v15, v1, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/SingleSideFilm$DinaText;->centerText:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/SingleSideFilm$DinaText;->rightText:Ljava/lang/String;

    move-object v14, v8

    move-object v8, v15

    move v15, v12

    move/from16 v16, v11

    move/from16 v17, v9

    move-object/from16 v18, v10

    move-object/from16 v19, v8

    move-object/from16 v20, v1

    invoke-virtual/range {v14 .. v20}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/pendant/ross/WaterMakerDina;->createBitmap(IIFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v8, p0

    invoke-virtual {v8, v1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/SingleSideFilm;->getWatermarkImage(Landroid/graphics/Bitmap;)Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processCvWatermark: watermarkImage="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", cost="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v2

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms, needIcc="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkParam;->isNeedIcc()Z

    move-result v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v8, v3, [Ljava/lang/Object;

    const-string v3, "Film"

    invoke-static {v3, v2, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkParam;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getYuvData()[B

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getWidth()I

    move-result v9

    invoke-virtual {v1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getHeight()I

    move-result v10

    const-string/jumbo v14, "watermark"

    invoke-static {v2, v14, v8, v9, v10}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkUtil;->dumpYuv(Ljava/lang/String;Ljava/lang/String;[BII)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getHeight()I

    move-result v2

    add-int/2addr v2, v5

    invoke-static {}, Lcom/android/camera/cache/ByteArrayPool;->getInstance()Lcom/android/camera/cache/ByteArrayPool;

    move-result-object v5

    mul-int v8, v12, v2

    mul-int/lit8 v8, v8, 0x3

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v5, v8}, Lcom/android/camera/cache/ByteArrayPool;->get(I)[B

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getYuvData()[B

    move-result-object v16

    invoke-virtual {v1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getWidth()I

    move-result v17

    invoke-virtual {v1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getHeight()I

    move-result v18

    move-object v5, v4

    move-object v8, v10

    move v9, v13

    move-object v0, v10

    move-object/from16 v10, v16

    move/from16 v21, v11

    move/from16 v11, v17

    move-object/from16 p0, v3

    move v3, v12

    move/from16 v12, v18

    invoke-static/range {v5 .. v12}, Lcom/xiaomi/libyuv/YuvUtils;->I420RotateWithSplice([BII[BI[BII)I

    invoke-static {}, Lcom/android/camera/cache/ByteArrayPool;->getInstance()Lcom/android/camera/cache/ByteArrayPool;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/camera/cache/ByteArrayPool;->put([B)V

    invoke-static {}, Lcom/android/camera/cache/ByteArrayPool;->getInstance()Lcom/android/camera/cache/ByteArrayPool;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getYuvData()[B

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/android/camera/cache/ByteArrayPool;->put([B)V

    new-instance v1, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;

    invoke-direct {v1, v0, v3, v2}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;-><init>([BII)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processCvWatermark: rotate "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u00b0 cost="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v14

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    move-object/from16 v7, p0

    invoke-static {v7, v4, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkParam;->getFileName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "rotate"

    invoke-static {v4, v6, v0, v3, v2}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkUtil;->dumpYuv(Ljava/lang/String;Ljava/lang/String;[BII)V

    new-instance v0, Landroid/graphics/Rect;

    move/from16 v2, v21

    invoke-direct {v0, v5, v5, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v2, p1

    invoke-virtual {v2, v5, v0}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkParam;->setRect(ILandroid/graphics/Rect;)V

    return-object v1
.end method
