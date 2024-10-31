.class public Lcom/android/zxing/CacheImageDecoder$FrameInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/zxing/CacheImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameInfo"
.end annotation


# instance fields
.field public mButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

.field public mFileName:Ljava/lang/String;

.field public mHeight:I

.field public mImageWrapper:Lcom/android/zxing/CacheImageDecoder$ImageWrapper;

.field public mStrides:[I

.field public mTimestamp:J

.field public mWidth:I


# direct methods
.method public constructor <init>(JII[ILjava/lang/String;Lcom/android/camera/module/loader/camera2/ButtonStatus;)V
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
            "timestamp",
            "width",
            "height",
            "strides",
            "fileName",
            "status"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/zxing/CacheImageDecoder$FrameInfo;->mTimestamp:J

    iput p3, p0, Lcom/android/zxing/CacheImageDecoder$FrameInfo;->mWidth:I

    iput p4, p0, Lcom/android/zxing/CacheImageDecoder$FrameInfo;->mHeight:I

    iput-object p5, p0, Lcom/android/zxing/CacheImageDecoder$FrameInfo;->mStrides:[I

    iput-object p6, p0, Lcom/android/zxing/CacheImageDecoder$FrameInfo;->mFileName:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/zxing/CacheImageDecoder$FrameInfo;->mButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    return-void
.end method


# virtual methods
.method public setImage(Lcom/android/zxing/CacheImageDecoder$ImageWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/zxing/CacheImageDecoder$FrameInfo;->mImageWrapper:Lcom/android/zxing/CacheImageDecoder$ImageWrapper;

    return-void
.end method
