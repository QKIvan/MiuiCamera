.class public Lcom/android/camera2/imagereaders/ImageReaderHandlerManager;
.super Ljava/lang/Object;


# instance fields
.field private mHead:Lcom/android/camera2/imagereaders/ImageReaderHandler;


# direct methods
.method public constructor <init>(Lcom/android/camera2/imagereaders/ImageReaderParam;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/camera2/imagereaders/SatImageReaderHandler;

    invoke-direct {v0, p1}, Lcom/android/camera2/imagereaders/SatImageReaderHandler;-><init>(Lcom/android/camera2/imagereaders/ImageReaderParam;)V

    new-instance v1, Lcom/android/camera2/imagereaders/NormalImageReaderHandler;

    invoke-direct {v1, p1}, Lcom/android/camera2/imagereaders/NormalImageReaderHandler;-><init>(Lcom/android/camera2/imagereaders/ImageReaderParam;)V

    new-instance v2, Lcom/android/camera2/imagereaders/OtherImageReaderHandler;

    invoke-direct {v2, p1}, Lcom/android/camera2/imagereaders/OtherImageReaderHandler;-><init>(Lcom/android/camera2/imagereaders/ImageReaderParam;)V

    new-instance v3, Lcom/android/camera2/imagereaders/DefaultImageReaderHandler;

    invoke-direct {v3, p1}, Lcom/android/camera2/imagereaders/DefaultImageReaderHandler;-><init>(Lcom/android/camera2/imagereaders/ImageReaderParam;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/module/shottype/ChainHandler;->setNextHandler(Lcom/android/camera/module/shottype/ChainHandler;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/module/shottype/ChainHandler;->setNextHandler(Lcom/android/camera/module/shottype/ChainHandler;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/module/shottype/ChainHandler;->setNextHandler(Lcom/android/camera/module/shottype/ChainHandler;)V

    iput-object v0, p0, Lcom/android/camera2/imagereaders/ImageReaderHandlerManager;->mHead:Lcom/android/camera2/imagereaders/ImageReaderHandler;

    return-void
.end method


# virtual methods
.method public getChainHandler()Lcom/android/camera2/imagereaders/ImageReaderHandler;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/imagereaders/ImageReaderHandlerManager;->mHead:Lcom/android/camera2/imagereaders/ImageReaderHandler;

    return-object p0
.end method
