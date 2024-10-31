.class public Lcom/android/camera2/portrait/PortraitDepthMap;
.super Ljava/lang/Object;


# static fields
.field private static final ALGORITHM_VENDOR:I = 0x20

.field private static final BLUR_LEVEL_START_ADDR:I = 0x10

.field private static final BOKEH_MAPPING_VERSION:I = 0x24

.field private static final DAPTH_MAP_START_ADDR:I = 0x98

.field private static final DATA_LENGTH_4:I = 0x4

.field private static final DATA_LENGTH_START_ADDR:I = 0x94

.field private static final DEPTH_HEIGHT_START_ADDR:I = 0x18

.field private static final DEPTH_VERSION:I = 0x1c

.field private static final DEPTH_VERSION_3:I = 0x3

.field private static final DEPTH_WIDTH_START_ADDR:I = 0x14

.field private static final HEADER_LENGTH_START_ADDR:I = 0x4

.field private static final HEADER_START_ADDR:I = 0x0

.field private static final POINT_X_START_ADDR:I = 0x8

.field private static final POINT_Y_START_ADDR:I = 0xc

.field private static final SHINE_LEVEL:I = 0x2c

.field private static final SHINE_THRES:I = 0x28

.field private static final TAG:Ljava/lang/String; = "PortraitDepthMap"


# instance fields
.field private mDepthMapHeader:[B

.field private mDepthMapOriginalData:[B


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "originalData"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/android/camera2/portrait/PortraitDepthMap;->getHeaderTag([B)I

    move-result v0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/android/camera2/portrait/PortraitDepthMap;->mDepthMapOriginalData:[B

    invoke-virtual {p0}, Lcom/android/camera2/portrait/PortraitDepthMap;->getDepthMapHeader()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/portrait/PortraitDepthMap;->mDepthMapHeader:[B

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal depth format! 0x80 != "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null depth data!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getBytes([BII)[B
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bytes",
            "from",
            "length"
        }
    .end annotation

    if-lez p2, :cond_0

    if-ltz p1, :cond_0

    array-length v0, p0

    sub-int/2addr v0, p1

    if-gt p2, v0, :cond_0

    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WRONG ARGUMENT: from ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", length = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getHeaderTag([B)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "originalData"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/android/camera2/portrait/PortraitDepthMap;->getBytes([BII)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera2/portrait/PortraitDepthMap;->getInteger([B)I

    move-result p0

    return p0
.end method

.method private static getInteger([B)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v0, 0x8

    shl-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "bytes can not covert to a integer value!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isDepthMapData([B)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v1, p0

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    invoke-static {p0}, Lcom/android/camera2/portrait/PortraitDepthMap;->getHeaderTag([B)I

    move-result p0

    const/16 v1, 0x80

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    if-nez p0, :cond_1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PortraitDepthMap"

    const-string v2, "Illegal depthmap format"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return p0
.end method


# virtual methods
.method public getAlgorithmVendor()I
    .locals 2

    iget-object p0, p0, Lcom/android/camera2/portrait/PortraitDepthMap;->mDepthMapHeader:[B

    const/16 v0, 0x20

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/android/camera2/portrait/PortraitDepthMap;->getBytes([BII)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera2/portrait/PortraitDepthMap;->getInteger([B)I

    move-result p0

    return p0
.end method

.method public getBlurLevel()I
    .locals 2

    iget-object p0, p0, Lcom/android/camera2/portrait/PortraitDepthMap;->mDepthMapHeader:[B

    const/16 v0, 0x10

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/android/camera2/portrait/PortraitDepthMap;->getBytes([BII)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera2/portrait/PortraitDepthMap;->getInteger([B)I

    move-result p0

    return p0
.end method

.method public getBokehMappingVersion()I
    .locals 2

    iget-object p0, p0, Lcom/android/camera2/portrait/PortraitDepthMap;->mDepthMapHeader:[B

    const/16 v0, 0x24

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/android/camera2/portrait/PortraitDepthMap;->getBytes([BII)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera2/portrait/PortraitDepthMap;->getInteger([B)I

    move-result p0

    return p0
.end method

.method public getDepthDataSize()Landroid/graphics/Point;
    .locals 3

    iget-object v0, p0, Lcom/android/camera2/portrait/PortraitDepthMap;->mDepthMapHeader:[B

    const/16 v1, 0x14

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/android/camera2/portrait/PortraitDepthMap;->getBytes([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/portrait/PortraitDepthMap;->getInteger([B)I

    move-result v0

    iget-object p0, p0, Lcom/android/camera2/portrait/PortraitDepthMap;->mDepthMapHeader:[B

    const/16 v1, 0x18

    invoke-static {p0, v1, v2}, Lcom/android/camera2/portrait/PortraitDepthMap;->getBytes([BII)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera2/portrait/PortraitDepthMap;->getInteger([B)I

    move-result p0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method public getDepthMapData()[B
    .locals 2

    iget-object v0, p0, Lcom/android/camera2/portrait/PortraitDepthMap;->mDepthMapOriginalData:[B

    invoke-virtual {p0}, Lcom/android/camera2/portrait/PortraitDepthMap;->getDepthMapLength()I

    move-result p0

    const/16 v1, 0x98

    invoke-static {v0, v1, p0}, Lcom/android/camera2/portrait/PortraitDepthMap;->getBytes([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public getDepthMapHeader()[B
    .locals 2

    iget-object v0, p0, Lcom/android/camera2/portrait/PortraitDepthMap;->mDepthMapOriginalData:[B

    const/4 v1, 0x4

    invoke-static {v0, v1, v1}, Lcom/android/camera2/portrait/PortraitDepthMap;->getBytes([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/portrait/PortraitDepthMap;->getInteger([B)I

    move-result v0

    iget-object p0, p0, Lcom/android/camera2/portrait/PortraitDepthMap;->mDepthMapOriginalData:[B

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/android/camera2/portrait/PortraitDepthMap;->getBytes([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public getDepthMapLength()I
    .locals 2

    iget-object p0, p0, Lcom/android/camera2/portrait/PortraitDepthMap;->mDepthMapHeader:[B

    const/16 v0, 0x94

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/android/camera2/portrait/PortraitDepthMap;->getBytes([BII)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera2/portrait/PortraitDepthMap;->getInteger([B)I

    move-result p0

    return p0
.end method

.method public getDepthVersion()I
    .locals 2

    iget-object p0, p0, Lcom/android/camera2/portrait/PortraitDepthMap;->mDepthMapHeader:[B

    const/16 v0, 0x1c

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/android/camera2/portrait/PortraitDepthMap;->getBytes([BII)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera2/portrait/PortraitDepthMap;->getInteger([B)I

    move-result p0

    return p0
.end method

.method public getFocusPoint()Landroid/graphics/Point;
    .locals 3

    iget-object v0, p0, Lcom/android/camera2/portrait/PortraitDepthMap;->mDepthMapHeader:[B

    const/16 v1, 0x8

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/android/camera2/portrait/PortraitDepthMap;->getBytes([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/portrait/PortraitDepthMap;->getInteger([B)I

    move-result v0

    iget-object p0, p0, Lcom/android/camera2/portrait/PortraitDepthMap;->mDepthMapHeader:[B

    const/16 v1, 0xc

    invoke-static {p0, v1, v2}, Lcom/android/camera2/portrait/PortraitDepthMap;->getBytes([BII)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera2/portrait/PortraitDepthMap;->getInteger([B)I

    move-result p0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method public getShineLevel()I
    .locals 2

    iget-object p0, p0, Lcom/android/camera2/portrait/PortraitDepthMap;->mDepthMapHeader:[B

    const/16 v0, 0x2c

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/android/camera2/portrait/PortraitDepthMap;->getBytes([BII)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera2/portrait/PortraitDepthMap;->getInteger([B)I

    move-result p0

    return p0
.end method

.method public getShineThres()I
    .locals 2

    iget-object p0, p0, Lcom/android/camera2/portrait/PortraitDepthMap;->mDepthMapHeader:[B

    const/16 v0, 0x28

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/android/camera2/portrait/PortraitDepthMap;->getBytes([BII)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera2/portrait/PortraitDepthMap;->getInteger([B)I

    move-result p0

    return p0
.end method

.method public getVendor()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public writePortraitExif(Lcom/android/camera2/portrait/PortraitDepthMapExif;Lcom/xiaomi/camera/core/ParallelTaskData;)[B
    .locals 41
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "depthMapExif",
            "parallelTaskData"
        }
    .end annotation

    const-string v0, "lenswatermark"

    const-string v1, "evminusyuv"

    const-string v2, "mainyuv"

    const-string v3, ","

    const-string v4, "depthmap"

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/portrait/PortraitDepthMap;->getDepthVersion()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/portrait/PortraitDepthMap;->getFocusPoint()Landroid/graphics/Point;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/portrait/PortraitDepthMap;->getBlurLevel()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/portrait/PortraitDepthMap;->getDepthDataSize()Landroid/graphics/Point;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/portrait/PortraitDepthMap;->getShineThres()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/portrait/PortraitDepthMap;->getShineLevel()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/portrait/PortraitDepthMap;->getVendor()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getPortraitLightingVersioin()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getCameraPreferredMode()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/portrait/PortraitDepthMap;->getBokehMappingVersion()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getAlgorithmName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    const/16 v17, 0x1

    move-object/from16 v18, v1

    if-nez v16, :cond_0

    const/16 v16, 0xff

    invoke-static/range {v16 .. v16}, Lcom/android/camera2/portrait/PortraitUtil;->getBokehAlgorithmName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move/from16 v1, v17

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/portrait/PortraitDepthMap;->getAlgorithmVendor()I

    move-result v15

    invoke-static {v15}, Lcom/android/camera2/portrait/PortraitUtil;->getBokehAlgorithmName(I)Ljava/lang/String;

    move-result-object v15

    :cond_1
    move-object/from16 v16, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v2

    const-string/jumbo v2, "writePortraitExif: version: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v21, v3

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v2, "PortraitDepthMap"

    invoke-static {v2, v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writePortraitExif: focusPoint: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v22, v6

    const/4 v3, 0x0

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writePortraitExif: blurLevel: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writePortraitExif: depthDataSize: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writePortraitExif: shineThreshold: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writePortraitExif: shineLevel: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writePortraitExif: lightingPattern: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getLightingPattern()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writePortraitExif: isCinematicAspectRatio: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->isCinematicAspectRatio()Z

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writePortraitExif: rotation: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getRotation()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writePortraitExif: vendor: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writePortraitExif: portraitLightingVersion: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writePortraitExif: cameraPreferredMode: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writePortraitExif: bokehMappingVersion: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writePortraitExif: algorithmName: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->hasCvWaterMark()Z

    move-result v6

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getJpeg()[B

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/miui/camerainfra/exif/ExifHelper;->createExifInterface([B)Lcom/miui/camerainfra/exif/ExifInterface;

    move-result-object v3

    if-nez v3, :cond_4

    const/4 v6, 0x0

    new-array v0, v6, [Ljava/lang/Object;

    const-string/jumbo v1, "writePortraitExif() create Exif error: #0: return original jpeg"

    invoke-static {v2, v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getJpeg()[B

    move-result-object v0

    return-object v0

    :cond_4
    move/from16 p2, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v23, v0

    const-string v0, "depthMapVersion"

    invoke-virtual {v3, v0, v6}, Lcom/miui/camerainfra/exif/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v6, "depthMapBlurLevel"

    invoke-virtual {v3, v6, v0}, Lcom/miui/camerainfra/exif/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getLightingPattern()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v6, "portraitLightingPattern"

    invoke-virtual {v3, v6, v0}, Lcom/miui/camerainfra/exif/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->isBokehFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->isFrontMirror()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "1"

    goto :goto_2

    :cond_5
    const-string v0, "0"

    :goto_2
    const-string v6, "frontMirror"

    invoke-virtual {v3, v6, v0}, Lcom/miui/camerainfra/exif/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz v1, :cond_7

    const-string v0, "algorithmComment"

    invoke-virtual {v3, v0, v15}, Lcom/miui/camerainfra/exif/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getJpeg()[B

    move-result-object v0

    invoke-static {v0, v3}, Lcom/miui/camerainfra/exif/ExifHelper;->writeImageWithExif([BLcom/miui/camerainfra/exif/ExifInterface;)[B

    move-result-object v1

    if-nez v1, :cond_8

    const/4 v3, 0x0

    new-array v0, v3, [Ljava/lang/Object;

    const-string/jumbo v1, "writePortraitExif(): #1: return original jpeg"

    invoke-static {v2, v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getJpeg()[B

    move-result-object v0

    return-object v0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sdcard/DCIM/Camera/evZeroMainImage"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getTimeStamp()J

    move-result-wide v14

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ".yuv"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sdcard/DCIM/Camera/evZeroSubImage"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v15, v12

    move/from16 v24, v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getTimeStamp()J

    move-result-wide v12

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "sdcard/DCIM/Camera/evMinusMainImage"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v25, v15

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getTimeStamp()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v12

    const/4 v14, 0x4

    const-wide/16 v28, 0x0

    if-eqz v12, :cond_9

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_9

    const/4 v12, 0x0

    invoke-static {v13, v12}, Lcom/android/camera/Util;->getHeader2Int(Ljava/io/File;I)I

    move-result v15

    invoke-static {v13, v14}, Lcom/android/camera/Util;->getHeader2Int(Ljava/io/File;I)I

    move-result v12

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v30

    const-wide/16 v26, 0x8

    sub-long v30, v30, v26

    move-object/from16 v33, v1

    move-object/from16 v32, v13

    const/4 v13, 0x0

    invoke-static {v0, v13}, Lcom/android/camera/Util;->getHeader2Int(Ljava/io/File;I)I

    move-result v1

    invoke-static {v0, v14}, Lcom/android/camera/Util;->getHeader2Int(Ljava/io/File;I)I

    move-result v13

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v34

    sub-long v34, v34, v26

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v36, v0

    const-string v0, "main width = "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", main height = "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", sub width ="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", sub height = "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move/from16 v19, v1

    const/4 v14, 0x0

    new-array v1, v14, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move/from16 v0, v19

    goto :goto_3

    :cond_9
    move-object/from16 v36, v0

    move-object/from16 v33, v1

    move-object/from16 v32, v13

    const/4 v14, 0x0

    move v0, v14

    move v12, v0

    move v13, v12

    move v15, v13

    move-wide/from16 v30, v28

    move-wide/from16 v34, v30

    :goto_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {v1, v14}, Lcom/android/camera/Util;->getHeader2Int(Ljava/io/File;I)I

    move-result v6

    const/4 v14, 0x4

    invoke-static {v1, v14}, Lcom/android/camera/Util;->getHeader2Int(Ljava/io/File;I)I

    move-result v37

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v38

    const-wide/16 v26, 0x8

    sub-long v38, v38, v26

    goto :goto_4

    :cond_a
    move-wide/from16 v38, v28

    const/4 v6, 0x0

    const/16 v37, 0x0

    :goto_4
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v14
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8

    move-object/from16 v26, v1

    :try_start_1
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    invoke-interface {v14, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9

    move-object/from16 v27, v2

    :try_start_2
    const-string v2, "UTF-8"

    move-object/from16 v40, v1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v14, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a

    const/4 v1, 0x0

    :try_start_3
    invoke-interface {v14, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "version"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v14, v1, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b

    :try_start_4
    const-string v1, "focuspoint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v22

    move/from16 v22, v6

    iget v6, v5, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v6, v21

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a

    const/4 v5, 0x0

    :try_start_5
    invoke-interface {v14, v5, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "blurlevel"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v14, v5, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    :try_start_6
    const-string v1, "depthsize"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v8, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v8, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a

    const/4 v5, 0x0

    :try_start_7
    invoke-interface {v14, v5, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "shinethreshold"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v14, v5, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "shinelevel"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v14, v5, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "rawlength"

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getRawLength()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v14, v5, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "depthlength"

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getDepthLength()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v14, v5, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "mimovie"

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->isCinematicAspectRatio()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v14, v5, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "depthOrientation"

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getRotation()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v14, v5, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "vendor"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v14, v5, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "portraitLightingVersion"

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v14, v5, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "cameraPreferredMode"

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v14, v5, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "bokehMappingVersion"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v14, v5, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v14, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    add-long v1, v30, v34

    add-long v1, v1, v38

    cmp-long v3, v1, v28

    const-string v4, "height"

    const-string/jumbo v5, "width"

    const-string v6, "length"

    const-string v7, "offset"

    if-eqz v3, :cond_b

    move-object/from16 v3, v20

    const/4 v8, 0x0

    :try_start_8
    invoke-interface {v14, v8, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    :try_start_9
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getRawLength()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getDepthLength()I

    move-result v9

    add-int/2addr v8, v9

    int-to-long v8, v8

    add-long/2addr v8, v1

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    const/4 v9, 0x0

    :try_start_a
    invoke-interface {v14, v9, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v14, v9, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v14, v9, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v14, v9, v4, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v14, v9, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "subyuv"

    invoke-interface {v14, v9, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    :try_start_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getRawLength()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getDepthLength()I

    move-result v8

    add-int/2addr v3, v8

    int-to-long v8, v3

    add-long v8, v8, v34

    add-long v8, v8, v38

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    const/4 v8, 0x0

    :try_start_c
    invoke-interface {v14, v8, v7, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static/range {v34 .. v35}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v14, v8, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v8, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v8, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "subyuv"

    invoke-interface {v14, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_5

    :catch_0
    move-object v1, v9

    goto/16 :goto_f

    :catch_1
    move-object v1, v8

    goto/16 :goto_f

    :cond_b
    :goto_5
    cmp-long v0, v38, v28

    if-eqz v0, :cond_c

    move-object/from16 v0, v18

    const/4 v3, 0x0

    :try_start_d
    invoke-interface {v14, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    :try_start_e
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getRawLength()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getDepthLength()I

    move-result v8

    add-int/2addr v3, v8

    int-to-long v8, v3

    add-long v8, v8, v38

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    const/4 v8, 0x0

    :try_start_f
    invoke-interface {v14, v8, v7, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static/range {v38 .. v39}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v14, v8, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v14, v8, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static/range {v37 .. v37}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v14, v8, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v14, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1

    goto :goto_6

    :catch_2
    move-object v1, v3

    goto/16 :goto_f

    :cond_c
    :goto_6
    :try_start_10
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getJpegDataOfTheRegionUnderWatermarks()[B

    move-result-object v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a

    const-string v8, "paddingy"

    const/4 v9, 0x2

    const-string v10, "paddingx"

    if-eqz v0, :cond_f

    :try_start_11
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getJpegDataOfTheRegionUnderWatermarks()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getCoordinatesOfOfTheRegionUnderWatermarks()[I

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getCoordinatesOfOfTheRegionUnderWatermarks()[I

    move-result-object v0

    array-length v0, v0

    const/4 v11, 0x4

    if-lt v0, v11, :cond_f

    const-string/jumbo v0, "subimage"
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a

    const/4 v11, 0x0

    :try_start_12
    invoke-interface {v14, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_4

    :try_start_13
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getJpegDataOfTheRegionUnderWatermarks()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getDulWaterMark()[B

    move-result-object v11

    if-eqz v11, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getDulWaterMark()[B

    move-result-object v11

    array-length v11, v11

    goto :goto_7

    :cond_d
    const/4 v11, 0x0

    :goto_7
    add-int/2addr v0, v11

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getTimeWaterMark()[B

    move-result-object v11

    if-eqz v11, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getTimeWaterMark()[B

    move-result-object v11

    array-length v11, v11

    goto :goto_8

    :cond_e
    const/4 v11, 0x0

    :goto_8
    add-int/2addr v0, v11

    int-to-long v11, v0

    add-long/2addr v11, v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getRawLength()I

    move-result v0

    move-object v13, v4

    int-to-long v3, v0

    add-long/2addr v11, v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getDepthLength()I

    move-result v0

    int-to-long v3, v0

    add-long/2addr v11, v3

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_a

    const/4 v3, 0x0

    :try_start_14
    invoke-interface {v14, v3, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getJpegDataOfTheRegionUnderWatermarks()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v3, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getCoordinatesOfOfTheRegionUnderWatermarks()[I

    move-result-object v0
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_2

    const/4 v4, 0x0

    :try_start_15
    aget v0, v0, v4
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_3

    :try_start_16
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v3, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getCoordinatesOfOfTheRegionUnderWatermarks()[I

    move-result-object v0

    aget v0, v0, v17

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v3, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getCoordinatesOfOfTheRegionUnderWatermarks()[I

    move-result-object v0

    aget v0, v0, v9

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v3, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getCoordinatesOfOfTheRegionUnderWatermarks()[I

    move-result-object v0

    const/4 v4, 0x3

    aget v0, v0, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v13

    invoke-interface {v14, v3, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "rotation"

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getRotation()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v14, v3, v0, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "subimage"

    invoke-interface {v14, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_2

    goto :goto_9

    :catch_3
    move-object v1, v3

    goto/16 :goto_d

    :catch_4
    move-object v1, v11

    goto/16 :goto_f

    :cond_f
    :goto_9
    :try_start_17
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getDulWaterMark()[B

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getDulWaterMark()[B

    move-result-object v0

    array-length v0, v0
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_a

    if-lez v0, :cond_11

    move-object/from16 v0, v16

    const/4 v3, 0x0

    :try_start_18
    invoke-interface {v14, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_2

    :try_start_19
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getDulWaterMark()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getTimeWaterMark()[B

    move-result-object v11

    if-eqz v11, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getTimeWaterMark()[B

    move-result-object v11

    array-length v11, v11

    goto :goto_a

    :cond_10
    const/4 v11, 0x0

    :goto_a
    add-int/2addr v3, v11

    int-to-long v11, v3

    add-long/2addr v11, v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getRawLength()I

    move-result v3

    move-object/from16 v16, v10

    int-to-long v9, v3

    add-long/2addr v11, v9

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getDepthLength()I

    move-result v3

    int-to-long v9, v3

    add-long/2addr v11, v9

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_a

    const/4 v9, 0x0

    :try_start_1a
    invoke-interface {v14, v9, v7, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getDulWaterMark()[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v14, v9, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getDulCameraWaterMarkLocation()[I

    move-result-object v3
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_0

    const/4 v10, 0x0

    :try_start_1b
    aget v3, v3, v10
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_5

    :try_start_1c
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v14, v9, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getDulCameraWaterMarkLocation()[I

    move-result-object v3

    aget v3, v3, v17

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v14, v9, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getDulCameraWaterMarkLocation()[I

    move-result-object v3

    const/4 v10, 0x2

    aget v3, v3, v10

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v10, v16

    invoke-interface {v14, v9, v10, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getDulCameraWaterMarkLocation()[I

    move-result-object v3

    const/4 v11, 0x3

    aget v3, v3, v11

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v14, v9, v8, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v14, v9, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_0

    goto :goto_b

    :catch_5
    move-object v1, v9

    move v2, v10

    goto/16 :goto_10

    :cond_11
    :goto_b
    :try_start_1d
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getTimeWaterMark()[B

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getTimeWaterMark()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_12

    const-string/jumbo v0, "timewatermark"
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_a

    const/4 v3, 0x0

    :try_start_1e
    invoke-interface {v14, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_2

    :try_start_1f
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getTimeWaterMark()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v11, v0

    add-long/2addr v11, v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getRawLength()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v11, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getDepthLength()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v11, v0

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_a

    const/4 v1, 0x0

    :try_start_20
    invoke-interface {v14, v1, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getTimeWaterMark()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v1, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getTimeWaterMarkLocation()[I

    move-result-object v0
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_b

    const/4 v2, 0x0

    :try_start_21
    aget v0, v0, v2
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_c

    :try_start_22
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v1, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getTimeWaterMarkLocation()[I

    move-result-object v0

    aget v0, v0, v17

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getTimeWaterMarkLocation()[I

    move-result-object v0

    const/4 v2, 0x2

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v1, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getTimeWaterMarkLocation()[I

    move-result-object v0

    const/4 v2, 0x3

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v1, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "timewatermark"

    invoke-interface {v14, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_c

    :cond_12
    const/4 v1, 0x0

    :goto_c
    if-eqz p2, :cond_13

    invoke-virtual/range {v23 .. v23}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getWatermarkJpegWidth()I

    move-result v0

    invoke-virtual/range {v23 .. v23}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getWatermarkJpegHeight()I

    move-result v2

    new-instance v3, Landroid/graphics/Rect;
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_b

    const/4 v4, 0x0

    :try_start_23
    invoke-direct {v3, v4, v4, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual/range {v23 .. v23}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getCvWaterMarkLocationEnbale()Z

    move-result v0

    invoke-virtual/range {v23 .. v23}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getCvWaterMarkTimeEnable()Z

    move-result v2

    invoke-static {v14, v4, v3, v0, v2}, Lcom/android/camera/XmpTool;->appendCvXmpMeta(Lorg/xmlpull/v1/XmlSerializer;ILandroid/graphics/Rect;ZZ)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_6

    goto :goto_e

    :catch_6
    :goto_d
    move v2, v4

    goto :goto_10

    :cond_13
    :goto_e
    :try_start_24
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual/range {v40 .. v40}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_b

    move-object/from16 v4, v27

    const/4 v2, 0x0

    goto :goto_11

    :catch_7
    move-object v1, v5

    goto :goto_f

    :catch_8
    move-object/from16 v26, v1

    :catch_9
    move-object/from16 v27, v2

    :catch_a
    const/4 v1, 0x0

    :catch_b
    :goto_f
    const/4 v2, 0x0

    :catch_c
    :goto_10
    new-array v0, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "writePortraitExif(): Failed to generate depthmap associated xmp metadata"

    move-object/from16 v4, v27

    invoke-static {v4, v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    :goto_11
    if-nez v0, :cond_14

    new-array v0, v2, [Ljava/lang/Object;

    const-string/jumbo v1, "writePortraitExif(): #2: return original jpeg"

    invoke-static {v4, v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getJpeg()[B

    move-result-object v0

    return-object v0

    :cond_14
    :try_start_25
    new-instance v2, Ljava/io/ByteArrayInputStream;
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_d
    .catch Lcom/adobe/xmp/XMPException; {:try_start_25 .. :try_end_25} :catch_d

    move-object/from16 v3, v33

    :try_start_26
    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_e
    .catch Lcom/adobe/xmp/XMPException; {:try_start_26 .. :try_end_26} :catch_e

    :try_start_27
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_3

    :try_start_28
    invoke-static {}, Lcom/android/camera/XmpHelper;->createXMPMeta()Lcom/adobe/xmp/XMPMeta;

    move-result-object v6

    const-string v7, "http://ns.xiaomi.com/photos/1.0/camera/"

    const-string v8, "XMPMeta"

    invoke-interface {v6, v7, v8, v0}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2, v5, v6}, Lcom/android/camera/XmpHelper;->writeXMPMeta(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/adobe/xmp/XMPMeta;)Z

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getJpegDataOfTheRegionUnderWatermarks()[B

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getJpegDataOfTheRegionUnderWatermarks()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_15

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getCoordinatesOfOfTheRegionUnderWatermarks()[I

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getCoordinatesOfOfTheRegionUnderWatermarks()[I

    move-result-object v0

    array-length v0, v0

    const/4 v6, 0x4

    if-lt v0, v6, :cond_15

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getJpegDataOfTheRegionUnderWatermarks()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getDulWaterMark()[B

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getDulWaterMark()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getTimeWaterMark()[B

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getTimeWaterMark()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_17
    if-eqz p2, :cond_18

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getCvWatermarkJpeg()[B

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getCvWatermarkJpeg()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_18
    cmp-long v0, v30, v28

    const/16 v6, 0x8

    if-eqz v0, :cond_19

    move-object/from16 v0, v32

    invoke-static {v0, v5, v6}, Lcom/android/camera/Util;->writeFile2Stream(Ljava/io/File;Ljava/io/ByteArrayOutputStream;I)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_19
    cmp-long v0, v34, v28

    if-eqz v0, :cond_1a

    move-object/from16 v0, v36

    invoke-static {v0, v5, v6}, Lcom/android/camera/Util;->writeFile2Stream(Ljava/io/File;Ljava/io/ByteArrayOutputStream;I)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1a
    cmp-long v0, v38, v28

    if-eqz v0, :cond_1b

    move-object/from16 v0, v26

    invoke-static {v0, v5, v6}, Lcom/android/camera/Util;->writeFile2Stream(Ljava/io/File;Ljava/io/ByteArrayOutputStream;I)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1b
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    :try_start_29
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_3

    :try_start_2a
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_e
    .catch Lcom/adobe/xmp/XMPException; {:try_start_2a .. :try_end_2a} :catch_e

    const/4 v2, 0x0

    goto :goto_14

    :catchall_0
    move-exception v0

    move-object v6, v0

    :try_start_2b
    throw v6
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_1

    :catchall_1
    move-exception v0

    move-object v7, v0

    :try_start_2c
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_2

    goto :goto_12

    :catchall_2
    move-exception v0

    move-object v5, v0

    :try_start_2d
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_12
    throw v7
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_3

    :catchall_3
    move-exception v0

    move-object v5, v0

    :try_start_2e
    throw v5
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_4

    :catchall_4
    move-exception v0

    move-object v6, v0

    :try_start_2f
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_5

    goto :goto_13

    :catchall_5
    move-exception v0

    move-object v2, v0

    :try_start_30
    invoke-virtual {v5, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_13
    throw v6
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_e
    .catch Lcom/adobe/xmp/XMPException; {:try_start_30 .. :try_end_30} :catch_e

    :catch_d
    move-object/from16 v3, v33

    :catch_e
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/Object;

    const-string/jumbo v5, "writePortraitExif(): Failed to insert depthmap associated xmp metadata"

    invoke-static {v4, v5, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_14
    if-eqz v1, :cond_1d

    array-length v0, v1

    array-length v3, v3

    if-gt v0, v3, :cond_1c

    goto :goto_15

    :cond_1c
    return-object v1

    :cond_1d
    :goto_15
    new-array v0, v2, [Ljava/lang/Object;

    const-string/jumbo v1, "writePortraitExif(): #3: return original jpeg"

    invoke-static {v4, v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getJpeg()[B

    move-result-object v0

    return-object v0
.end method

.method public writePortraitExifCompat(Lcom/android/camera2/portrait/PortraitDepthMapExif;Lcom/xiaomi/camera/core/ParallelTaskData;)[B
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "depthMapExif",
            "parallelTaskData"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera2/portrait/PortraitDepthMap;->getDepthVersion()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "depth version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "PortraitDepthMap"

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera2/portrait/PortraitDepthMap;->writePortraitExif(Lcom/android/camera2/portrait/PortraitDepthMapExif;Lcom/xiaomi/camera/core/ParallelTaskData;)[B

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/camera2/portrait/PortraitDepthMap;->writePortraitExifOldVersion(Lcom/android/camera2/portrait/PortraitDepthMapExif;Lcom/xiaomi/camera/core/ParallelTaskData;)[B

    move-result-object p0

    return-object p0
.end method

.method public writePortraitExifOldVersion(Lcom/android/camera2/portrait/PortraitDepthMapExif;Lcom/xiaomi/camera/core/ParallelTaskData;)[B
    .locals 36
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "depthMapExif",
            "parallelTaskData"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, ","

    const-string v1, "depthmap"

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/portrait/PortraitDepthMap;->getFocusPoint()Landroid/graphics/Point;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/portrait/PortraitDepthMap;->getBlurLevel()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/portrait/PortraitDepthMap;->getDepthDataSize()Landroid/graphics/Point;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getPortraitLightingVersioin()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getCameraPreferredMode()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaomi/camera/core/PictureInfo;->isFrontCamera()Z

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->isSupportZeroDegreeOrientationImage()Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x2

    goto :goto_0

    :cond_0
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v8

    invoke-virtual {v8}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->OoooooO()I

    move-result v8

    :goto_0
    const/4 v10, -0x1

    const/16 v11, 0xa

    const/4 v12, 0x5

    if-lez v8, :cond_4

    if-eqz v7, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaomi/camera/core/PictureInfo;->isAiEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaomi/camera/core/PictureInfo;->getAiType()I

    move-result v7

    if-ne v7, v11, :cond_1

    const/16 v10, 0x46

    goto :goto_1

    :cond_1
    const/16 v10, 0x28

    :goto_1
    move v11, v10

    goto :goto_2

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaomi/camera/core/PictureInfo;->isAiEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaomi/camera/core/PictureInfo;->getAiType()I

    move-result v7

    if-ne v7, v11, :cond_3

    const/16 v10, 0x1e

    goto :goto_1

    :cond_3
    :goto_2
    move v10, v12

    goto :goto_3

    :cond_4
    move v11, v10

    :goto_3
    const/4 v7, 0x1

    if-le v8, v7, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/portrait/PortraitDepthMap;->getVendor()I

    move-result v12

    goto :goto_4

    :cond_5
    move v12, v7

    :goto_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "writePortraitExif: focusPoint: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    new-array v15, v14, [Ljava/lang/Object;

    const-string v9, "PortraitDepthMap"

    invoke-static {v9, v13, v15}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "writePortraitExif: blurLevel: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-array v15, v14, [Ljava/lang/Object;

    invoke-static {v9, v13, v15}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "writePortraitExif: depthDataSize: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-array v15, v14, [Ljava/lang/Object;

    invoke-static {v9, v13, v15}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "writePortraitExif: shineThreshold: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-array v15, v14, [Ljava/lang/Object;

    invoke-static {v9, v13, v15}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "writePortraitExif: shineLevel: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-array v15, v14, [Ljava/lang/Object;

    invoke-static {v9, v13, v15}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "writePortraitExif: lightingPattern: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getLightingPattern()I

    move-result v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-array v15, v14, [Ljava/lang/Object;

    invoke-static {v9, v13, v15}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "writePortraitExif: isCinematicAspectRatio: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->isCinematicAspectRatio()Z

    move-result v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-array v15, v14, [Ljava/lang/Object;

    invoke-static {v9, v13, v15}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "writePortraitExif: rotation: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getRotation()I

    move-result v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-array v15, v14, [Ljava/lang/Object;

    invoke-static {v9, v13, v15}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "writePortraitExif: vendor: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-array v15, v14, [Ljava/lang/Object;

    invoke-static {v9, v13, v15}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "writePortraitExif: portraitLightingVersion: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-array v15, v14, [Ljava/lang/Object;

    invoke-static {v9, v13, v15}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "writePortraitExif: cameraPreferredMode: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-array v15, v14, [Ljava/lang/Object;

    invoke-static {v9, v13, v15}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v15

    if-eqz v15, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v15

    invoke-virtual {v15}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->hasCvWaterMark()Z

    move-result v16

    goto :goto_5

    :cond_6
    move/from16 v16, v14

    const/4 v15, 0x0

    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getJpeg()[B

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/miui/camerainfra/exif/ExifHelper;->createExifInterface([B)Lcom/miui/camerainfra/exif/ExifInterface;

    move-result-object v7

    if-nez v7, :cond_7

    new-array v0, v14, [Ljava/lang/Object;

    const-string/jumbo v1, "writePortraitExif(): exif is null #0: return original jpeg"

    invoke-static {v9, v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getJpeg()[B

    move-result-object v0

    return-object v0

    :cond_7
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "depthMapVersion"

    invoke-virtual {v7, v14, v13}, Lcom/miui/camerainfra/exif/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "depthMapBlurLevel"

    invoke-virtual {v7, v14, v13}, Lcom/miui/camerainfra/exif/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getLightingPattern()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "portraitLightingPattern"

    invoke-virtual {v7, v14, v13}, Lcom/miui/camerainfra/exif/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->isBokehFrontCamera()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->isFrontMirror()Z

    move-result v13

    if-eqz v13, :cond_8

    const-string v13, "1"

    goto :goto_6

    :cond_8
    const-string v13, "0"

    :goto_6
    const-string v14, "frontMirror"

    invoke-virtual {v7, v14, v13}, Lcom/miui/camerainfra/exif/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getJpeg()[B

    move-result-object v13

    invoke-static {v13, v7}, Lcom/miui/camerainfra/exif/ExifHelper;->writeImageWithExif([BLcom/miui/camerainfra/exif/ExifInterface;)[B

    move-result-object v7

    if-nez v7, :cond_a

    const/4 v13, 0x0

    new-array v0, v13, [Ljava/lang/Object;

    const-string/jumbo v1, "writePortraitExif(): #1: return original jpeg"

    invoke-static {v9, v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getJpeg()[B

    move-result-object v0

    return-object v0

    :cond_a
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "sdcard/DCIM/Camera/evZeroMainImage"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 p2, v15

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getTimeStamp()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ".yuv"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v7

    const-string v7, "sdcard/DCIM/Camera/evZeroSubImage"

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v19, v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getTimeStamp()J

    move-result-wide v6

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sdcard/DCIM/Camera/evMinusMainImage"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v15, v11

    move/from16 v20, v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getTimeStamp()J

    move-result-wide v11

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v6

    const/4 v13, 0x4

    const-wide/16 v23, 0x0

    if-eqz v6, :cond_b

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_b

    const/4 v6, 0x0

    invoke-static {v11, v6}, Lcom/android/camera/Util;->getHeader2Int(Ljava/io/File;I)I

    move-result v14

    invoke-static {v11, v13}, Lcom/android/camera/Util;->getHeader2Int(Ljava/io/File;I)I

    move-result v6

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v25

    const-wide/16 v21, 0x8

    sub-long v25, v25, v21

    move/from16 v28, v5

    move-object/from16 v27, v11

    const/4 v11, 0x0

    invoke-static {v12, v11}, Lcom/android/camera/Util;->getHeader2Int(Ljava/io/File;I)I

    move-result v5

    invoke-static {v12, v13}, Lcom/android/camera/Util;->getHeader2Int(Ljava/io/File;I)I

    move-result v11

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v29

    sub-long v29, v29, v21

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v31, v12

    const-string v12, "main width = "

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", main height = "

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", sub width ="

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", sub height = "

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move/from16 v17, v5

    const/4 v13, 0x0

    new-array v5, v13, [Ljava/lang/Object;

    invoke-static {v9, v12, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move/from16 v5, v17

    goto :goto_7

    :cond_b
    move/from16 v28, v5

    move-object/from16 v27, v11

    move-object/from16 v31, v12

    const/4 v13, 0x0

    move v5, v13

    move v6, v5

    move v11, v6

    move v14, v11

    move-wide/from16 v25, v23

    move-wide/from16 v29, v25

    :goto_7
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-static {v12, v13}, Lcom/android/camera/Util;->getHeader2Int(Ljava/io/File;I)I

    move-result v7

    const/4 v13, 0x4

    invoke-static {v12, v13}, Lcom/android/camera/Util;->getHeader2Int(Ljava/io/File;I)I

    move-result v32

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v33

    const-wide/16 v21, 0x8

    sub-long v33, v33, v21

    goto :goto_8

    :cond_c
    move-wide/from16 v33, v23

    const/4 v7, 0x0

    const/16 v32, 0x0

    :goto_8
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v13
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8

    move-object/from16 v21, v12

    :try_start_1
    new-instance v12, Ljava/io/StringWriter;

    invoke-direct {v12}, Ljava/io/StringWriter;-><init>()V

    invoke-interface {v13, v12}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    move-object/from16 v22, v9

    :try_start_2
    const-string v9, "UTF-8"

    move-object/from16 v35, v12

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v13, v9, v12}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9

    const/4 v9, 0x0

    :try_start_3
    invoke-interface {v13, v9, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v12, "version"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v13, v9, v12, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    :try_start_4
    const-string v8, "focuspoint"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    const/4 v9, 0x0

    :try_start_5
    invoke-interface {v13, v9, v8, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "blurlevel"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v13, v9, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    :try_start_6
    const-string v2, "depthsize"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9

    const/4 v3, 0x0

    :try_start_7
    invoke-interface {v13, v3, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "shinethreshold"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v3, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "shinelevel"

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v3, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "rawlength"

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getRawLength()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v3, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "depthlength"

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getDepthLength()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v3, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "mimovie"

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->isCinematicAspectRatio()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v3, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "depthOrientation"

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getRotation()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v3, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "vendor"

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v3, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "portraitLightingVersion"

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v3, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "cameraPreferredMode"

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v3, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v13, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    add-long v0, v25, v29

    add-long v0, v0, v33

    cmp-long v2, v0, v23

    const-string v3, "height"

    const-string/jumbo v4, "width"

    const-string v8, "length"

    const-string v9, "offset"

    if-eqz v2, :cond_d

    :try_start_8
    const-string v2, "mainyuv"
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9

    const/4 v10, 0x0

    :try_start_9
    invoke-interface {v13, v10, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    :try_start_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getRawLength()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getDepthLength()I

    move-result v10

    add-int/2addr v2, v10

    move v12, v11

    int-to-long v10, v2

    add-long/2addr v10, v0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    const/4 v10, 0x0

    :try_start_b
    invoke-interface {v13, v10, v9, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v10, v8, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v10, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v10, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "mainyuv"

    invoke-interface {v13, v10, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "subyuv"

    invoke-interface {v13, v10, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    :try_start_c
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getRawLength()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getDepthLength()I

    move-result v6

    add-int/2addr v2, v6

    int-to-long v10, v2

    add-long v10, v10, v29

    add-long v10, v10, v33

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    const/4 v6, 0x0

    :try_start_d
    invoke-interface {v13, v6, v9, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v6, v8, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v6, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v6, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "subyuv"

    invoke-interface {v13, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    goto :goto_9

    :catch_0
    move-object v1, v6

    goto/16 :goto_12

    :catch_1
    move-object v1, v10

    goto/16 :goto_12

    :cond_d
    :goto_9
    cmp-long v2, v33, v23

    if-eqz v2, :cond_e

    :try_start_e
    const-string v2, "evminusyuv"
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    const/4 v5, 0x0

    :try_start_f
    invoke-interface {v13, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    :try_start_10
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getRawLength()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getDepthLength()I

    move-result v5

    add-int/2addr v2, v5

    int-to-long v5, v2

    add-long v5, v5, v33

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    const/4 v5, 0x0

    :try_start_11
    invoke-interface {v13, v5, v9, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static/range {v33 .. v34}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v5, v8, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v5, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v5, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "evminusyuv"

    invoke-interface {v13, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_2

    goto :goto_a

    :catch_2
    move-object v1, v5

    goto/16 :goto_12

    :cond_e
    :goto_a
    :try_start_12
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getJpegDataOfTheRegionUnderWatermarks()[B

    move-result-object v2
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9

    const/4 v5, 0x3

    const-string v6, "paddingy"

    const-string v7, "paddingx"

    if-eqz v2, :cond_11

    :try_start_13
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getJpegDataOfTheRegionUnderWatermarks()[B

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getCoordinatesOfOfTheRegionUnderWatermarks()[I

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getCoordinatesOfOfTheRegionUnderWatermarks()[I

    move-result-object v2

    array-length v2, v2

    const/4 v10, 0x4

    if-lt v2, v10, :cond_11

    const-string/jumbo v2, "subimage"
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_9

    const/4 v10, 0x0

    :try_start_14
    invoke-interface {v13, v10, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_1

    :try_start_15
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getJpegDataOfTheRegionUnderWatermarks()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getDulWaterMark()[B

    move-result-object v10

    if-eqz v10, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getDulWaterMark()[B

    move-result-object v10

    array-length v10, v10

    goto :goto_b

    :cond_f
    const/4 v10, 0x0

    :goto_b
    add-int/2addr v2, v10

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getTimeWaterMark()[B

    move-result-object v10

    if-eqz v10, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getTimeWaterMark()[B

    move-result-object v10

    array-length v10, v10

    goto :goto_c

    :cond_10
    const/4 v10, 0x0

    :goto_c
    add-int/2addr v2, v10

    int-to-long v10, v2

    add-long/2addr v10, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getRawLength()I

    move-result v2

    int-to-long v14, v2

    add-long/2addr v10, v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getDepthLength()I

    move-result v2

    int-to-long v14, v2

    add-long/2addr v10, v14

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_9

    const/4 v10, 0x0

    :try_start_16
    invoke-interface {v13, v10, v9, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getJpegDataOfTheRegionUnderWatermarks()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v10, v8, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getCoordinatesOfOfTheRegionUnderWatermarks()[I

    move-result-object v2
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_1

    const/4 v11, 0x0

    :try_start_17
    aget v2, v2, v11
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_3

    :try_start_18
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v10, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getCoordinatesOfOfTheRegionUnderWatermarks()[I

    move-result-object v2

    const/4 v11, 0x1

    aget v2, v2, v11

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v10, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getCoordinatesOfOfTheRegionUnderWatermarks()[I

    move-result-object v2

    const/4 v11, 0x2

    aget v2, v2, v11

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v10, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getCoordinatesOfOfTheRegionUnderWatermarks()[I

    move-result-object v2

    aget v2, v2, v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v10, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "rotation"

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getRotation()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v13, v10, v2, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "subimage"

    invoke-interface {v13, v10, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_1

    :cond_11
    :try_start_19
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getDulWaterMark()[B

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getDulWaterMark()[B

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_13

    const-string v2, "lenswatermark"
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_9

    const/4 v10, 0x0

    :try_start_1a
    invoke-interface {v13, v10, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_1

    :try_start_1b
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getDulWaterMark()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getTimeWaterMark()[B

    move-result-object v10

    if-eqz v10, :cond_12

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getTimeWaterMark()[B

    move-result-object v10

    array-length v10, v10

    goto :goto_d

    :cond_12
    const/4 v10, 0x0

    :goto_d
    add-int/2addr v2, v10

    int-to-long v10, v2

    add-long/2addr v10, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getRawLength()I

    move-result v2

    int-to-long v14, v2

    add-long/2addr v10, v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getDepthLength()I

    move-result v2

    int-to-long v14, v2

    add-long/2addr v10, v14

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_9

    const/4 v10, 0x0

    :try_start_1c
    invoke-interface {v13, v10, v9, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getDulWaterMark()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v10, v8, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getDulCameraWaterMarkLocation()[I

    move-result-object v2
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_1

    const/4 v11, 0x0

    :try_start_1d
    aget v2, v2, v11
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_3

    :try_start_1e
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v10, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getDulCameraWaterMarkLocation()[I

    move-result-object v2

    const/4 v11, 0x1

    aget v2, v2, v11

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v10, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getDulCameraWaterMarkLocation()[I

    move-result-object v2

    const/4 v11, 0x2

    aget v2, v2, v11

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v10, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getDulCameraWaterMarkLocation()[I

    move-result-object v2

    aget v2, v2, v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v10, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "isLTR"

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->isLTR()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v13, v10, v2, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "lenswatermark"

    invoke-interface {v13, v10, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_1

    goto :goto_e

    :catch_3
    move-object v1, v10

    move v2, v11

    goto/16 :goto_13

    :cond_13
    :goto_e
    :try_start_1f
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getTimeWaterMark()[B

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getTimeWaterMark()[B

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_14

    const-string/jumbo v2, "timewatermark"
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_9

    const/4 v10, 0x0

    :try_start_20
    invoke-interface {v13, v10, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_1

    :try_start_21
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getTimeWaterMark()[B

    move-result-object v2

    array-length v2, v2

    int-to-long v10, v2

    add-long/2addr v10, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getRawLength()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v10, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getDepthLength()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v10, v0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_9

    const/4 v1, 0x0

    :try_start_22
    invoke-interface {v13, v1, v9, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getTimeWaterMark()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v1, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getTimeWaterMarkLocation()[I

    move-result-object v0
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_a

    const/4 v2, 0x0

    :try_start_23
    aget v0, v0, v2
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_b

    :try_start_24
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getTimeWaterMarkLocation()[I

    move-result-object v0

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getTimeWaterMarkLocation()[I

    move-result-object v0

    const/4 v2, 0x2

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v1, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getTimeWaterMarkLocation()[I

    move-result-object v0

    aget v0, v0, v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v1, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "isLTR"

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->isLTR()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "timewatermark"

    invoke-interface {v13, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_f

    :cond_14
    const/4 v1, 0x0

    :goto_f
    if-eqz v16, :cond_15

    invoke-virtual/range {p2 .. p2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getWatermarkJpegWidth()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getWatermarkJpegHeight()I

    move-result v2

    new-instance v3, Landroid/graphics/Rect;
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_a

    const/4 v4, 0x0

    :try_start_25
    invoke-direct {v3, v4, v4, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual/range {p2 .. p2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getCvWaterMarkLocationEnbale()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getCvWaterMarkTimeEnable()Z

    move-result v2

    invoke-static {v13, v4, v3, v0, v2}, Lcom/android/camera/XmpTool;->appendCvXmpMeta(Lorg/xmlpull/v1/XmlSerializer;ILandroid/graphics/Rect;ZZ)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_4

    goto :goto_10

    :catch_4
    move v2, v4

    goto :goto_13

    :cond_15
    :goto_10
    :try_start_26
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual/range {v35 .. v35}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_a

    move-object/from16 v4, v22

    const/4 v2, 0x0

    goto :goto_14

    :catch_5
    move-object v1, v3

    goto :goto_12

    :catch_6
    move-object v1, v9

    goto :goto_12

    :catch_7
    move-object/from16 v22, v9

    goto :goto_11

    :catch_8
    move-object/from16 v22, v9

    move-object/from16 v21, v12

    :catch_9
    :goto_11
    const/4 v1, 0x0

    :catch_a
    :goto_12
    const/4 v2, 0x0

    :catch_b
    :goto_13
    new-array v0, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "writePortraitExif(): Failed to generate depthmap associated xmp metadata"

    move-object/from16 v4, v22

    invoke-static {v4, v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v9, v1

    :goto_14
    if-nez v9, :cond_16

    new-array v0, v2, [Ljava/lang/Object;

    const-string/jumbo v1, "writePortraitExif(): #2: return original jpeg"

    invoke-static {v4, v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getJpeg()[B

    move-result-object v0

    return-object v0

    :cond_16
    :try_start_27
    new-instance v2, Ljava/io/ByteArrayInputStream;
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_c
    .catch Lcom/adobe/xmp/XMPException; {:try_start_27 .. :try_end_27} :catch_c

    move-object/from16 v3, v18

    :try_start_28
    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_d
    .catch Lcom/adobe/xmp/XMPException; {:try_start_28 .. :try_end_28} :catch_d

    :try_start_29
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_4

    :try_start_2a
    invoke-static {}, Lcom/android/camera/XmpHelper;->createXMPMeta()Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    const-string v6, "http://ns.xiaomi.com/photos/1.0/camera/"

    const-string v7, "XMPMeta"

    invoke-interface {v0, v6, v7, v9}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2, v5, v0}, Lcom/android/camera/XmpHelper;->writeXMPMeta(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/adobe/xmp/XMPMeta;)Z

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getJpegDataOfTheRegionUnderWatermarks()[B

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getJpegDataOfTheRegionUnderWatermarks()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_17

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getCoordinatesOfOfTheRegionUnderWatermarks()[I

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getCoordinatesOfOfTheRegionUnderWatermarks()[I

    move-result-object v0

    array-length v0, v0

    const/4 v6, 0x4

    if-lt v0, v6, :cond_17

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getJpegDataOfTheRegionUnderWatermarks()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_17
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getDulWaterMark()[B

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getDulWaterMark()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_18
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getTimeWaterMark()[B

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getTimeWaterMark()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_19
    if-eqz v16, :cond_1a

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getCvWatermarkJpeg()[B

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getCvWatermarkJpeg()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_1a
    cmp-long v0, v25, v23

    const/16 v6, 0x8

    if-eqz v0, :cond_1b

    move-object/from16 v0, v27

    invoke-static {v0, v5, v6}, Lcom/android/camera/Util;->writeFile2Stream(Ljava/io/File;Ljava/io/ByteArrayOutputStream;I)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1b
    cmp-long v0, v29, v23

    if-eqz v0, :cond_1c

    move-object/from16 v0, v31

    invoke-static {v0, v5, v6}, Lcom/android/camera/Util;->writeFile2Stream(Ljava/io/File;Ljava/io/ByteArrayOutputStream;I)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1c
    cmp-long v0, v33, v23

    if-eqz v0, :cond_1d

    move-object/from16 v0, v21

    invoke-static {v0, v5, v6}, Lcom/android/camera/Util;->writeFile2Stream(Ljava/io/File;Ljava/io/ByteArrayOutputStream;I)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1d
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_1

    :try_start_2b
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0

    :try_start_2c
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_e
    .catch Lcom/adobe/xmp/XMPException; {:try_start_2c .. :try_end_2c} :catch_e

    const/4 v1, 0x0

    goto :goto_18

    :catchall_0
    move-exception v0

    goto :goto_16

    :catchall_1
    move-exception v0

    move-object v6, v0

    :try_start_2d
    throw v6
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_2

    :catchall_2
    move-exception v0

    move-object v7, v0

    :try_start_2e
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_3

    goto :goto_15

    :catchall_3
    move-exception v0

    move-object v5, v0

    :try_start_2f
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_15
    throw v7
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_4

    :catchall_4
    move-exception v0

    move-object v13, v1

    :goto_16
    move-object v1, v0

    :try_start_30
    throw v1
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_5

    :catchall_5
    move-exception v0

    move-object v5, v0

    :try_start_31
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_6

    goto :goto_17

    :catchall_6
    move-exception v0

    move-object v2, v0

    :try_start_32
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_17
    throw v5
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_32} :catch_e
    .catch Lcom/adobe/xmp/XMPException; {:try_start_32 .. :try_end_32} :catch_e

    :catch_c
    move-object/from16 v3, v18

    :catch_d
    move-object v13, v1

    :catch_e
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "writePortraitExif(): Failed to insert depthmap associated xmp metadata"

    invoke-static {v4, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_18
    if-eqz v13, :cond_1f

    array-length v0, v13

    array-length v2, v3

    if-gt v0, v2, :cond_1e

    goto :goto_19

    :cond_1e
    return-object v13

    :cond_1f
    :goto_19
    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "writePortraitExif(): #3: return original jpeg"

    invoke-static {v4, v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;->getJpeg()[B

    move-result-object v0

    return-object v0
.end method
