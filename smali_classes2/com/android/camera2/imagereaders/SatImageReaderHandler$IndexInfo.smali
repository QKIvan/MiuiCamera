.class public Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera2/imagereaders/SatImageReaderHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IndexInfo"
.end annotation


# instance fields
.field private mCameraType:I

.field private mImageFlag:I

.field private mIndex:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageType",
            "cameraType",
            "index"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;->mImageFlag:I

    iput p2, p0, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;->mCameraType:I

    iput p3, p0, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;->mIndex:I

    return-void
.end method


# virtual methods
.method public getCameraType()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;->mCameraType:I

    return p0
.end method

.method public getImageType()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;->mImageFlag:I

    return p0
.end method

.method public getIndex()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;->mIndex:I

    return p0
.end method
