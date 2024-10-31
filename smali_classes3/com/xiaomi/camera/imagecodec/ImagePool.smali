.class public Lcom/xiaomi/camera/imagecodec/ImagePool;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;,
        Lcom/xiaomi/camera/imagecodec/ImagePool$HalImagePoolHolder;,
        Lcom/xiaomi/camera/imagecodec/ImagePool$ImagePoolHolder;
    }
.end annotation


# static fields
.field private static final MAX_IMAGE_POOL_SIZE_DEFAULT:I = 0x3c

.field public static final STATIC_TAG:Ljava/lang/String; = "ImagePool"

.field private static final TRIM_POOL_IMAGES_COUNT:I = 0xa


# instance fields
.field private TAG:Ljava/lang/String;

.field private final mAcquiredImageCountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAllAcquiredImageCount:I

.field private final mHoldImages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/Image;",
            "Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;",
            ">;"
        }
    .end annotation
.end field

.field private final mImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private final mImageLock:Ljava/lang/Object;

.field private final mImageLongSparseArray:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation
.end field

.field private final mImageReaderHandlerThread:Landroid/os/HandlerThread;

.field private final mImageReaderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;",
            "Landroid/media/ImageReader;",
            ">;"
        }
    .end annotation
.end field

.field private final mImageWriterHandlerThread:Landroid/os/HandlerThread;

.field private final mImageWriterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;",
            "Landroid/media/ImageWriter;",
            ">;"
        }
    .end annotation
.end field

.field private final mPooledImageCountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mQueueSizeLock:Ljava/lang/Object;

.field private final mRowStrides:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;",
            "[I>;"
        }
    .end annotation
.end field

.field private sInited:Z

.field private sMaxAcquireImageCount:I

.field private sMaxDequeueImageCount:I

.field private sMaxSize:I


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->sInited:Z

    const/16 v0, 0x1e

    iput v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->sMaxAcquireImageCount:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->sMaxDequeueImageCount:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->sMaxSize:I

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageLongSparseArray:Landroid/util/LongSparseArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageWriterMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageReaderMap:Ljava/util/Map;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ImageWriterHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageWriterHandlerThread:Landroid/os/HandlerThread;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ImageReaderHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageReaderHandlerThread:Landroid/os/HandlerThread;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mHoldImages:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mAcquiredImageCountMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mPooledImageCountMap:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mQueueSizeLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mRowStrides:Ljava/util/Map;

    new-instance v0, Lcom/xiaomi/camera/imagecodec/ImagePool$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/camera/imagecodec/ImagePool$1;-><init>(Lcom/xiaomi/camera/imagecodec/ImagePool;)V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/xiaomi/camera/imagecodec/ImagePool$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/imagecodec/ImagePool;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/xiaomi/camera/imagecodec/ImagePool;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/xiaomi/camera/imagecodec/ImagePool;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/xiaomi/camera/imagecodec/ImagePool;)Landroid/util/LongSparseArray;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageLongSparseArray:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/xiaomi/camera/imagecodec/ImagePool;)Landroid/os/HandlerThread;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageReaderHandlerThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/xiaomi/camera/imagecodec/ImagePool;)Landroid/os/HandlerThread;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageWriterHandlerThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method private changeAcquiredImageCountLocked(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;I)I
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mAcquiredImageCountMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p2

    :goto_0
    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mAcquiredImageCountMap:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private changePooledImageCountLocked(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;I)I
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mPooledImageCountMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p2

    :goto_0
    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mPooledImageCountMap:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private getAcquiredImageCountLocked(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;)I
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mAcquiredImageCountMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getHalPoolInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;
    .locals 1

    sget-object v0, Lcom/xiaomi/camera/imagecodec/ImagePool$HalImagePoolHolder;->sInstance:Lcom/xiaomi/camera/imagecodec/ImagePool;

    return-object v0
.end method

.method private getImageWriterImageReaderNotCached(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;)Landroid/util/Pair;
    .locals 4
    .param p1    # Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/media/ImageWriter;",
            "Landroid/media/ImageReader;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;->getFormat()I

    move-result p1

    iget v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->sMaxAcquireImageCount:I

    invoke-static {v0, v1, p1, v2}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    sget-object v0, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;->IMAGEPOOL:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper;->setImageReaderNameDepends(Landroid/media/ImageReader;Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;Z)V

    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageReaderHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p1, v0, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    invoke-virtual {p1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iget v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->sMaxDequeueImageCount:I

    invoke-static {v0, v2, v1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->makeImageWriter(Landroid/view/Surface;IZ)Landroid/media/ImageWriter;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageWriterHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/media/ImageWriter;->setOnImageReleasedListener(Landroid/media/ImageWriter$OnImageReleasedListener;Landroid/os/Handler;)V

    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private getImageWriterLocked(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;)Landroid/media/ImageWriter;
    .locals 5
    .param p1    # Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageWriterMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;->getFormat()I

    move-result v2

    iget v3, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->sMaxAcquireImageCount:I

    invoke-static {v0, v1, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;->IMAGEPOOL:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper;->setImageReaderNameDepends(Landroid/media/ImageReader;Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;Z)V

    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageReaderHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, v1, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    iget v3, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->sMaxDequeueImageCount:I

    invoke-static {v1, v3, v2}, Lcom/xiaomi/camera/imagecodec/ImagePool;->makeImageWriter(Landroid/view/Surface;IZ)Landroid/media/ImageWriter;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageWriterHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v2, v3}, Landroid/media/ImageWriter;->setOnImageReleasedListener(Landroid/media/ImageWriter$OnImageReleasedListener;Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageReaderMap:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageWriterMap:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImageWriter: ImageWriterMap.size = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageWriterMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageReaderMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    const/16 v0, 0xa

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImageWriter: there are too much ImageWriter and ImageReader instances in map, size is : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageReaderMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaomi/engine/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v1

    :cond_1
    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageWriterMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/ImageWriter;

    return-object p0
.end method

.method public static getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;
    .locals 1

    sget-object v0, Lcom/xiaomi/camera/imagecodec/ImagePool$ImagePoolHolder;->sInstance:Lcom/xiaomi/camera/imagecodec/ImagePool;

    return-object v0
.end method

.method public static makeImageWriter(Landroid/view/Surface;IZ)Landroid/media/ImageWriter;
    .locals 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-gt v0, v1, :cond_0

    invoke-static {p0, p1}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;I)Landroid/media/ImageWriter;

    move-result-object p0

    return-object p0

    :cond_0
    const-class v0, Landroid/media/ImageWriter;

    const/4 v1, 0x3

    :try_start_0
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/view/Surface;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "newInstance"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v1, v6

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/ImageWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p2, "ImagePool"

    const-string v0, "could not find our method, try android method"

    invoke-static {p2, v0}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;I)Landroid/media/ImageWriter;

    move-result-object p2

    :goto_0
    return-object p2
.end method

.method private needTrimPoolBuffer()Z
    .locals 6

    iget v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->sMaxAcquireImageCount:I

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mQueueSizeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mAllAcquiredImageCount:I

    iget v3, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->sMaxSize:I

    const/4 v4, 0x1

    if-le v2, v3, :cond_0

    monitor-exit v1

    return v4

    :cond_0
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mPooledImageCountMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, v0, :cond_1

    monitor-exit v1

    return v4

    :cond_2
    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mAcquiredImageCountMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v2, v0, :cond_3

    monitor-exit v1

    return v4

    :cond_4
    monitor-exit v1

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static toImageQueueKey(Landroid/media/Image;)Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;
    .locals 3

    if-eqz p0, :cond_0

    new-instance v0, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;-><init>(III)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    const-string v1, "clear: E"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageLongSparseArray:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageLongSparseArray:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->close()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageReaderMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->close()V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageReaderMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageWriterMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/ImageWriter;

    invoke-virtual {v3}, Landroid/media/ImageWriter;->close()V

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageWriterMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mQueueSizeLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mAcquiredImageCountMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mPooledImageCountMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    iput v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mAllAcquiredImageCount:I

    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    const-string v2, "clear ImagePool cause error: "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/engine/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    const-string v0, "clear: X"

    invoke-static {p0, v0}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getAcquiredImageCountLocked()I
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mQueueSizeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mAcquiredImageCountMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v1, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return v1

    :cond_2
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAllAcquiredImageCount()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mQueueSizeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mAllAcquiredImageCount:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAnEmptyImage(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;)Landroid/media/Image;
    .locals 4
    .param p1    # Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getImageWriterLocked(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;)Landroid/media/ImageWriter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/ImageWriter;->dequeueInputImage()Landroid/media/Image;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/media/Image;->setTimestamp(J)V

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAnEmptyImage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getImage(J)Landroid/media/Image;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageLongSparseArray:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/Image;

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageLongSparseArray:Landroid/util/LongSparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getRowStride(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;)[I
    .locals 8

    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mRowStrides:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getImageWriterImageReaderNotCached(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/media/ImageWriter;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageWriter;->dequeueInputImage()Landroid/media/Image;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/media/Image;->setTimestamp(J)V

    iget-object v4, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAnEmptyImage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " | "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    array-length v4, v0

    new-array v4, v4, [I

    const/4 v5, 0x0

    :goto_0
    array-length v6, v0

    if-ge v5, v6, :cond_1

    aget-object v6, v0, v5

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Landroid/media/Image;->close()V

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    invoke-virtual {v2}, Landroid/media/ImageWriter;->close()V

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mRowStrides:Ljava/util/Map;

    invoke-interface {p0, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v4

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public holdImage(Landroid/media/Image;)V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mQueueSizeLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->toImageQueueKey(Landroid/media/Image;)Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mHoldImages:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/xiaomi/camera/imagecodec/ImagePool;->changeAcquiredImageCountLocked(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;I)I

    move-result v1

    iget v3, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mAllAcquiredImageCount:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mAllAcquiredImageCount:I

    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "holdImage: image: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " qSize: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " | totalSize: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mAllAcquiredImageCount:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mQueueSizeLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

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

.method public init(II)V
    .locals 1

    const/16 v0, 0x3c

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->init(III)V

    return-void
.end method

.method public init(III)V
    .locals 4

    iget-boolean v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->sInited:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, " maxDequeueCount="

    if-lez p1, :cond_3

    if-gtz p2, :cond_1

    goto :goto_0

    :cond_1
    add-int v1, p1, p2

    const/16 v2, 0x40

    const/4 v3, 0x1

    if-lt v1, v2, :cond_2

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v3

    const-string p1, "maxAcquireCount(%d) + maxDequeueCount(%d) should not be larger than 64"

    invoke-static {p2, p1, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaomi/engine/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iput-boolean v3, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->sInited:Z

    iput p1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->sMaxAcquireImageCount:I

    iput p2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->sMaxDequeueImageCount:I

    iput p3, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->sMaxSize:I

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init: maxAcquireCount="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter: maxAcquireCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " size="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaomi/engine/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isImageQueueFull(I)Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mQueueSizeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->sMaxAcquireImageCount:I

    sub-int/2addr v1, p1

    const/4 p1, 0x0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getAcquiredImageCountLocked()I

    move-result p0

    if-lt p0, v1, :cond_0

    const/4 p1, 0x1

    :cond_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isImageQueueFull(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;I)Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mQueueSizeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->sMaxAcquireImageCount:I

    sub-int/2addr v1, p2

    const/4 p2, 0x0

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getAcquiredImageCountLocked(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;)I

    move-result p0

    if-lt p0, v1, :cond_0

    const/4 p2, 0x1

    :cond_0
    monitor-exit v0

    return p2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isImageQueueTotalFull()Z
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mQueueSizeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isImageQueueTotalFull: totalSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mAllAcquiredImageCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mAllAcquiredImageCount:I

    iget p0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->sMaxSize:I

    if-lt v1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public queueImage(Landroid/media/Image;)V
    .locals 8

    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v1

    iget-object v3, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageLongSparseArray:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-static {p1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->toImageQueueKey(Landroid/media/Image;)Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getImageWriterLocked(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;)Landroid/media/ImageWriter;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "queueImage: start. image: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " | "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, p1}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageLock:Ljava/lang/Object;

    const-wide/16 v1, 0x3a98

    invoke-virtual {p1, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    const-string v1, "queueImage: end"

    invoke-static {p1, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mQueueSizeLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    :try_start_3
    invoke-direct {p0, v3, v0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->changePooledImageCountLocked(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;I)I

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_0
    :try_start_4
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Image has exist: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public releaseImage(Landroid/media/Image;)V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mQueueSizeLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mHoldImages:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mHoldImages:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2}, Lcom/xiaomi/camera/imagecodec/ImagePool;->changeAcquiredImageCountLocked(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;I)I

    move-result v1

    iget v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mAllAcquiredImageCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mAllAcquiredImageCount:I

    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseImage: image: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " qSize: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " | totalSize: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mAllAcquiredImageCount:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mQueueSizeLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseImage: not hold image "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaomi/engine/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public trimPoolBuffer()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    const-string v1, "trimPoolBuffer: E"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mImageReaderMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->discardFreeBuffers()V

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mQueueSizeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mPooledImageCountMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    const-string v0, "trimPoolBuffer: X"

    invoke-static {p0, v0}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public trimPoolBufferIfNeeded()V
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->needTrimPoolBuffer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    const-string v1, "trimPoolBufferIfNeeded"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->trimPoolBuffer()V

    :cond_0
    return-void
.end method

.method public waitIfImageQueueFull(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;II)V
    .locals 4

    iget v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->sMaxAcquireImageCount:I

    sub-int/2addr v0, p2

    const/4 p2, 0x0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mQueueSizeLock:Ljava/lang/Object;

    monitor-enter v0

    :goto_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getAcquiredImageCountLocked(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v1, p2, :cond_1

    if-lez p3, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mQueueSizeLock:Ljava/lang/Object;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->mQueueSizeLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/xiaomi/engine/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
