.class public Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/FourSideFilm;
.super Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/SingleSideFilm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/FourSideFilm$RossNodes;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FourSideFrame"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/SingleSideFilm;-><init>()V

    return-void
.end method

.method private createNode(IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/FourSideFilm$RossNodes;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "time",
            "location",
            "isTimeOn",
            "isLocationOn",
            "exifContent"
        }
    .end annotation

    new-instance v0, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/FourSideFilm$RossNodes;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/FourSideFilm$RossNodes;-><init>(Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/FourSideFilm$1;)V

    invoke-static {p1, p2}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CVWatermark;->getRatio(II)F

    move-result p1

    iput p1, v0, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/FourSideFilm$RossNodes;->ratio:F

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p6, :cond_0

    if-eqz p5, :cond_0

    iput-object p4, v0, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/FourSideFilm$RossNodes;->topRightText:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/SingleSideFilm;->getBrand()Ljava/lang/String;

    move-result-object p0

    if-eqz p5, :cond_1

    iput-object p3, v0, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/FourSideFilm$RossNodes;->btmLeftText:Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-eqz p6, :cond_2

    iput-object p4, v0, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/FourSideFilm$RossNodes;->btmLeftText:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iput-object p0, v0, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/FourSideFilm$RossNodes;->btmLeftText:Ljava/lang/String;

    :goto_0
    iput-object p7, v0, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/FourSideFilm$RossNodes;->btmRightText:Ljava/lang/String;

    if-nez p6, :cond_3

    if-eqz p5, :cond_4

    :cond_3
    iput-object p0, v0, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/FourSideFilm$RossNodes;->btmCenterText:Ljava/lang/String;

    :cond_4
    return-object v0
.end method

.method private synthetic lambda$processWatermark$0([Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;[Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;[Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;Landroid/graphics/Bitmap;Ljava/lang/Integer;)LOooO0o0/o00OOOOo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1000,
            0x1000
        }
        names = {
            "topWatermarkImage",
            "bottomWatermarkImage",
            "horizontalWatermarkImage",
            "bitmap",
            "index"
        }
    .end annotation

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    const/4 v0, 0x0

    if-eqz p5, :cond_2

    const/4 p1, 0x1

    if-eq p5, p1, :cond_1

    const/4 p1, 0x2

    if-eq p5, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p4}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/SingleSideFilm;->getWatermarkImage(Landroid/graphics/Bitmap;)Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;

    move-result-object p0

    aput-object p0, p3, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p4}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/SingleSideFilm;->getWatermarkImage(Landroid/graphics/Bitmap;)Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;

    move-result-object p0

    aput-object p0, p2, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p4}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/SingleSideFilm;->getWatermarkImage(Landroid/graphics/Bitmap;)Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;

    move-result-object p0

    aput-object p0, p1, v0

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public synthetic OooO00o([Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;[Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;[Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;Landroid/graphics/Bitmap;Ljava/lang/Integer;)LOooO0o0/o00OOOOo;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/FourSideFilm;->lambda$processWatermark$0([Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;[Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;[Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;Landroid/graphics/Bitmap;Ljava/lang/Integer;)LOooO0o0/o00OOOOo;

    const/4 p0, 0x0

    return-object p0
.end method

.method public isSupportLocation()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public processPreviewWatermark(Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkParam;)Landroid/graphics/Bitmap;
    .locals 14
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

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkParam;->getOrientation()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkParam;->getType()I

    move-result v2

    const-string v3, ""

    if-nez v2, :cond_0

    move-object v9, v3

    goto :goto_0

    :cond_0
    const-string v2, "v4.5.002540.1 By @\u8056\u5c0f\u718a(HolyBear)"

    move-object v9, v2

    :goto_0
    invoke-virtual {p1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkParam;->getType()I

    move-result v2

    if-nez v2, :cond_1

    move-object v10, v3

    goto :goto_1

    :cond_1
    const-string v2, "33\u00b035\'16\"N  7\u00b036\'50\"W"

    move-object v10, v2

    :goto_1
    invoke-virtual {p1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkParam;->getType()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    const-string v3, "23mm  f/1.9  1/1102s  ISO200"

    :goto_2
    move-object v13, v3

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {}, Lcom/android/camera/CameraSettings;->isCvWaterMarkTimeEnabled()Z

    move-result v11

    invoke-static {}, Lcom/android/camera/CameraSettings;->isCvWaterMarkLocationEnabled()Z

    move-result v12

    move-object v6, p0

    invoke-direct/range {v6 .. v13}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/FourSideFilm;->createNode(IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/FourSideFilm$RossNodes;

    move-result-object p0

    new-instance v2, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/pendant/ross/WaterMakerRoss;

    invoke-direct {v2}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/pendant/ross/WaterMakerRoss;-><init>()V

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    iget-object v6, p0, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/FourSideFilm$RossNodes;->topRightText:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/FourSideFilm$RossNodes;->btmLeftText:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/FourSideFilm$RossNodes;->btmCenterText:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/FourSideFilm$RossNodes;->btmRightText:Ljava/lang/String;

    invoke-virtual/range {v2 .. v9}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/pendant/ross/WaterMakerRoss;->createWaterBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processCvWatermark: addPreviewWatermark cost="

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

    const-string v1, "FourSideFrame"

    invoke-static {v1, p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public processWatermark(Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkParam;)Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;
    .locals 35
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

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkParam;->getOriginImage()Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getYuvData()[B

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkParam;->getOriginImage()Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getWidth()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkParam;->getOriginImage()Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getHeight()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkParam;->getOrientation()I

    move-result v14

    rem-int/lit16 v3, v14, 0xb4

    if-eqz v3, :cond_0

    move v15, v13

    goto :goto_0

    :cond_0
    move v15, v12

    :goto_0
    if-eqz v3, :cond_1

    move v3, v12

    goto :goto_1

    :cond_1
    move v3, v13

    :goto_1
    new-instance v16, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/pendant/ross/WaterMakerRoss;

    invoke-direct/range {v16 .. v16}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/pendant/ross/WaterMakerRoss;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkParam;->getExposureTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkParam;->getIso()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkParam;->getFocalLength35mm()S

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkParam;->getAperture()F

    move-result v8

    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CVWatermark;->getExifStr(JISF)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkParam;->getTakenTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CVWatermark;->getTimeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkParam;->getLocation()Landroid/location/Location;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CVWatermark;->getLocationStr(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkParam;->isTimestampOn()Z

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkParam;->isLocationOn()Z

    move-result v10

    move-object/from16 v4, p0

    move v5, v12

    move v6, v13

    invoke-direct/range {v4 .. v11}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/FourSideFilm;->createNode(IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/FourSideFilm$RossNodes;

    move-result-object v4

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    const/4 v11, 0x1

    new-array v10, v11, [Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;

    new-array v9, v11, [Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;

    new-array v8, v11, [Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;

    iget-object v6, v4, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/FourSideFilm$RossNodes;->topRightText:Ljava/lang/String;

    iget-object v7, v4, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/FourSideFilm$RossNodes;->btmLeftText:Ljava/lang/String;

    iget-object v11, v4, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/FourSideFilm$RossNodes;->btmCenterText:Ljava/lang/String;

    iget-object v4, v4, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/FourSideFilm$RossNodes;->btmRightText:Ljava/lang/String;

    move/from16 v24, v14

    new-instance v14, LOooO0OO/OooO0O0/OooO0O0/o00oOoo/OooO00o/OooO0O0/OooO00o/Oooo00o/OooOO0o/OooO00o;

    move/from16 v17, v15

    move-object/from16 v15, p0

    invoke-direct {v14, v15, v10, v9, v8}, LOooO0OO/OooO0O0/OooO0O0/o00oOoo/OooO00o/OooO0O0/OooO00o/Oooo00o/OooOO0o/OooO00o;-><init>(Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/type/FourSideFilm;[Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;[Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;[Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;)V

    move/from16 p0, v17

    move-object/from16 v15, v16

    move-object/from16 v16, v5

    move/from16 v18, v3

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v11

    move-object/from16 v22, v4

    move-object/from16 v23, v14

    invoke-virtual/range {v15 .. v23}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/pendant/ross/WaterMakerRoss;->createWaterCallback(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LOooO0o0/o00ooOoO/o000O00/o0OoOo0;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processCvWatermark: topWatermarkImage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, 0x0

    aget-object v5, v10, v14

    invoke-virtual {v5}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v10, v14

    invoke-virtual {v6}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getHeight()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", bottomWatermarkImage="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v9, v14

    invoke-virtual {v6}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getWidth()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v9, v14

    invoke-virtual {v6}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getHeight()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", horizontalWatermarkImage="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v8, v14

    invoke-virtual {v6}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getWidth()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v8, v14

    invoke-virtual {v5}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", needIcc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkParam;->isNeedIcc()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", cost="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v14, [Ljava/lang/Object;

    const-string v15, "FourSideFrame"

    invoke-static {v15, v1, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkParam;->getFileName()Ljava/lang/String;

    move-result-object v1

    aget-object v4, v10, v14

    invoke-virtual {v4}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getYuvData()[B

    move-result-object v4

    aget-object v5, v10, v14

    invoke-virtual {v5}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getWidth()I

    move-result v5

    aget-object v6, v10, v14

    invoke-virtual {v6}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getHeight()I

    move-result v6

    const-string/jumbo v7, "watermark_top"

    invoke-static {v1, v7, v4, v5, v6}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkUtil;->dumpYuv(Ljava/lang/String;Ljava/lang/String;[BII)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkParam;->getFileName()Ljava/lang/String;

    move-result-object v1

    aget-object v4, v9, v14

    invoke-virtual {v4}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getYuvData()[B

    move-result-object v4

    aget-object v5, v9, v14

    invoke-virtual {v5}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getWidth()I

    move-result v5

    aget-object v6, v9, v14

    invoke-virtual {v6}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getHeight()I

    move-result v6

    const-string/jumbo v7, "watermark_bottom"

    invoke-static {v1, v7, v4, v5, v6}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkUtil;->dumpYuv(Ljava/lang/String;Ljava/lang/String;[BII)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    aget-object v1, v10, v14

    invoke-virtual {v1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getHeight()I

    move-result v1

    aget-object v4, v9, v14

    invoke-virtual {v4}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getHeight()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v1, v3

    invoke-static {}, Lcom/android/camera/cache/ByteArrayPool;->getInstance()Lcom/android/camera/cache/ByteArrayPool;

    move-result-object v3

    move/from16 v11, p0

    mul-int v4, v11, v1

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/camera/cache/ByteArrayPool;->get(I)[B

    move-result-object v7

    aget-object v3, v10, v14

    invoke-virtual {v3}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getYuvData()[B

    move-result-object v18

    aget-object v3, v10, v14

    invoke-virtual {v3}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getWidth()I

    move-result v19

    aget-object v3, v10, v14

    invoke-virtual {v3}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getHeight()I

    move-result v20

    aget-object v3, v9, v14

    invoke-virtual {v3}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getYuvData()[B

    move-result-object v21

    aget-object v3, v9, v14

    invoke-virtual {v3}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getWidth()I

    move-result v22

    aget-object v3, v9, v14

    invoke-virtual {v3}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getHeight()I

    move-result v23

    move-object v3, v2

    move v4, v12

    move v5, v13

    move-object v6, v7

    move-object v13, v7

    move/from16 v7, v24

    move-object/from16 v25, v8

    move-object/from16 v8, v18

    move-object/from16 v18, v9

    move/from16 v9, v19

    move-object/from16 v19, v10

    move/from16 v10, v20

    move v12, v11

    move-object/from16 v11, v21

    move v14, v12

    move/from16 v12, v22

    move-object/from16 v20, v15

    move-object v15, v13

    move/from16 v13, v23

    invoke-static/range {v3 .. v13}, Lcom/xiaomi/libyuv/YuvUtils;->I420RotateWithSpliceVertical([BII[BI[BII[BII)I

    invoke-static {}, Lcom/android/camera/cache/ByteArrayPool;->getInstance()Lcom/android/camera/cache/ByteArrayPool;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/camera/cache/ByteArrayPool;->put([B)V

    new-instance v2, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;

    invoke-direct {v2, v15, v14, v1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;-><init>([BII)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processCvWatermark: rotate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v24

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u00b0 cost="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v16

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    move-object/from16 v6, v20

    invoke-static {v6, v3, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkParam;->getFileName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "rotate"

    invoke-static {v3, v5, v15, v14, v1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkUtil;->dumpYuv(Ljava/lang/String;Ljava/lang/String;[BII)V

    aget-object v3, v25, v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkParam;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getYuvData()[B

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getWidth()I

    move-result v7

    invoke-virtual {v3}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getHeight()I

    move-result v8

    const-string/jumbo v9, "watermark_horizontal"

    invoke-static {v4, v9, v5, v7, v8}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkUtil;->dumpYuv(Ljava/lang/String;Ljava/lang/String;[BII)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getWidth()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v14

    invoke-static {}, Lcom/android/camera/cache/ByteArrayPool;->getInstance()Lcom/android/camera/cache/ByteArrayPool;

    move-result-object v8

    mul-int v9, v7, v1

    mul-int/lit8 v9, v9, 0x3

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {v8, v9}, Lcom/android/camera/cache/ByteArrayPool;->get(I)[B

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getWidth()I

    move-result v26

    invoke-virtual {v2}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getHeight()I

    move-result v27

    invoke-virtual {v3}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getYuvData()[B

    move-result-object v29

    invoke-virtual {v3}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getWidth()I

    move-result v30

    invoke-virtual {v3}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getHeight()I

    move-result v31

    invoke-virtual {v3}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getYuvData()[B

    move-result-object v32

    invoke-virtual {v3}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getWidth()I

    move-result v33

    invoke-virtual {v3}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getHeight()I

    move-result v34

    move-object/from16 v25, v15

    move-object/from16 v28, v8

    invoke-static/range {v25 .. v34}, Lcom/xiaomi/libyuv/YuvUtils;->I420SpliceHorizontal([BII[B[BII[BII)I

    invoke-static {}, Lcom/android/camera/cache/ByteArrayPool;->getInstance()Lcom/android/camera/cache/ByteArrayPool;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/android/camera/cache/ByteArrayPool;->put([B)V

    invoke-static {}, Lcom/android/camera/cache/ByteArrayPool;->getInstance()Lcom/android/camera/cache/ByteArrayPool;

    move-result-object v2

    const/4 v9, 0x0

    aget-object v10, v19, v9

    invoke-virtual {v10}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getYuvData()[B

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/android/camera/cache/ByteArrayPool;->put([B)V

    invoke-static {}, Lcom/android/camera/cache/ByteArrayPool;->getInstance()Lcom/android/camera/cache/ByteArrayPool;

    move-result-object v2

    aget-object v10, v18, v9

    invoke-virtual {v10}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getYuvData()[B

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/android/camera/cache/ByteArrayPool;->put([B)V

    invoke-static {}, Lcom/android/camera/cache/ByteArrayPool;->getInstance()Lcom/android/camera/cache/ByteArrayPool;

    move-result-object v2

    invoke-virtual {v3}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getYuvData()[B

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/android/camera/cache/ByteArrayPool;->put([B)V

    new-instance v2, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;

    invoke-direct {v2, v8, v7, v1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;-><init>([BII)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "processCvWatermark: splice horizontal watermark cost="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v6, v0, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkParam;->getFileName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "final"

    invoke-static {v0, v5, v8, v7, v1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkUtil;->dumpYuv(Ljava/lang/String;Ljava/lang/String;[BII)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {v3}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getWidth()I

    move-result v5

    aget-object v6, v19, v4

    invoke-virtual {v6}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getHeight()I

    move-result v6

    invoke-virtual {v3}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getWidth()I

    move-result v3

    sub-int/2addr v7, v3

    aget-object v3, v18, v4

    invoke-virtual {v3}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/I420Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-direct {v0, v5, v6, v7, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v1, p1

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v0}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CvWatermarkParam;->setRect(ILandroid/graphics/Rect;)V

    return-object v2
.end method
