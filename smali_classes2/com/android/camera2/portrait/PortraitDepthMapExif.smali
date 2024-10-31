.class public Lcom/android/camera2/portrait/PortraitDepthMapExif;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;
    }
.end annotation


# instance fields
.field private algorithmName:Ljava/lang/String;

.field private cameraPreferredMode:I

.field private coordinatesOfOfTheRegionUnderWatermarks:[I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private cvWatermarkJpeg:[B

.field private depthLength:I

.field private dulCameraWaterMarkLocation:[I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private dulWaterMark:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private isBokehFrontCamera:Z

.field private isCinematicAspectRatio:Z

.field private isFrontMirror:Z

.field private isLTR:Z

.field private isSupportZeroDegreeOrientationImage:Z

.field private jpeg:[B

.field private jpegDataOfTheRegionUnderWatermarks:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private lightingPattern:I

.field private pictureInfo:Lcom/xiaomi/camera/core/PictureInfo;

.field private portraitLightingVersioin:I

.field private rawLength:I

.field private rotation:I

.field private timeStamp:J

.field private timeWaterMark:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private timeWaterMarkLocation:[I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->access$000(Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif;->jpeg:[B

    invoke-static {p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->access$100(Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif;->dulWaterMark:[B

    invoke-static {p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->access$200(Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif;->dulCameraWaterMarkLocation:[I

    invoke-static {p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->access$300(Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif;->timeWaterMark:[B

    invoke-static {p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->access$400(Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif;->timeWaterMarkLocation:[I

    invoke-static {p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->access$500(Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif;->jpegDataOfTheRegionUnderWatermarks:[B

    invoke-static {p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->access$600(Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif;->coordinatesOfOfTheRegionUnderWatermarks:[I

    invoke-static {p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->access$700(Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif;->rotation:I

    invoke-static {p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->access$800(Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif;->lightingPattern:I

    invoke-static {p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->access$900(Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif;->isFrontMirror:Z

    invoke-static {p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->access$1000(Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif;->isBokehFrontCamera:Z

    invoke-static {p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->access$1100(Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif;->isCinematicAspectRatio:Z

    invoke-static {p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->access$1200(Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif;->pictureInfo:Lcom/xiaomi/camera/core/PictureInfo;

    invoke-static {p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->access$1300(Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif;->rawLength:I

    invoke-static {p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->access$1400(Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif;->depthLength:I

    invoke-static {p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->access$1500(Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif;->timeStamp:J

    invoke-static {p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->access$1600(Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif;->portraitLightingVersioin:I

    invoke-static {p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->access$1700(Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif;->isSupportZeroDegreeOrientationImage:Z

    invoke-static {p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->access$1800(Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif;->cameraPreferredMode:I

    invoke-static {p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->access$1900(Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif;->isLTR:Z

    invoke-static {p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->access$2000(Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif;->algorithmName:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;->access$2100(Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif;->cvWatermarkJpeg:[B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;Lcom/android/camera2/portrait/PortraitDepthMapExif$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera2/portrait/PortraitDepthMapExif;-><init>(Lcom/android/camera2/portrait/PortraitDepthMapExif$Builder;)V

    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif;->algorithmName:Ljava/lang/String;

    return-object p0
.end method

.method public getCameraPreferredMode()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif;->cameraPreferredMode:I

    return p0
.end method

.method public getCoordinatesOfOfTheRegionUnderWatermarks()[I
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif;->coordinatesOfOfTheRegionUnderWatermarks:[I

    return-object p0
.end method

.method public getCvWatermarkJpeg()[B
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif;->cvWatermarkJpeg:[B

    return-object p0
.end method

.method public getDepthLength()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif;->depthLength:I

    return p0
.end method

.method public getDulCameraWaterMarkLocation()[I
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif;->dulCameraWaterMarkLocation:[I

    return-object p0
.end method

.method public getDulWaterMark()[B
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif;->dulWaterMark:[B

    return-object p0
.end method

.method public getJpeg()[B
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif;->jpeg:[B

    return-object p0
.end method

.method public getJpegDataOfTheRegionUnderWatermarks()[B
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif;->jpegDataOfTheRegionUnderWatermarks:[B

    return-object p0
.end method

.method public getLightingPattern()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif;->lightingPattern:I

    return p0
.end method

.method public getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif;->pictureInfo:Lcom/xiaomi/camera/core/PictureInfo;

    return-object p0
.end method

.method public getPortraitLightingVersioin()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif;->portraitLightingVersioin:I

    return p0
.end method

.method public getRawLength()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif;->rawLength:I

    return p0
.end method

.method public getRotation()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif;->rotation:I

    return p0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif;->timeStamp:J

    return-wide v0
.end method

.method public getTimeWaterMark()[B
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif;->timeWaterMark:[B

    return-object p0
.end method

.method public getTimeWaterMarkLocation()[I
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif;->timeWaterMarkLocation:[I

    return-object p0
.end method

.method public isBokehFrontCamera()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif;->isBokehFrontCamera:Z

    return p0
.end method

.method public isCinematicAspectRatio()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif;->isCinematicAspectRatio:Z

    return p0
.end method

.method public isFrontMirror()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif;->isFrontMirror:Z

    return p0
.end method

.method public isLTR()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif;->isLTR:Z

    return p0
.end method

.method public isSupportZeroDegreeOrientationImage()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportZeroDegreeOrientationImage"
        type = 0x2
    .end annotation

    iget-boolean p0, p0, Lcom/android/camera2/portrait/PortraitDepthMapExif;->isSupportZeroDegreeOrientationImage:Z

    return p0
.end method
