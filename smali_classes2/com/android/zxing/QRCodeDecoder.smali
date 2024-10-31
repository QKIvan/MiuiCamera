.class public Lcom/android/zxing/QRCodeDecoder;
.super Lcom/android/zxing/Decoder;


# static fields
.field private static final DECODE_INTERVAL:J = 0x3e8L

.field private static final DURATION_TIP_DISPLAY:J = 0xbb8L

.field public static final TAG:Ljava/lang/String; = "QRCodeDecoder"


# instance fields
.field private final mDecodeDisposable:Lio/reactivex/disposables/Disposable;

.field private final mHideTipCallback:Lio/reactivex/functions/Action;

.field private final mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

.field private final mPendingTasks:LOooO0OO/OooO0O0/OooO0OO/OooO;

.field private mResetTimerDisposable:Lio/reactivex/disposables/Disposable;

.field private mScanResult:Ljava/lang/String;

.field private final mSubjects:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lcom/android/zxing/PreviewImage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/android/zxing/Decoder;-><init>()V

    new-instance v0, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object v0, p0, Lcom/android/zxing/QRCodeDecoder;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    new-instance v1, LOooO0OO/OooO0O0/OooO0OO/OooO;

    invoke-direct {v1}, LOooO0OO/OooO0O0/OooO0OO/OooO;-><init>()V

    iput-object v1, p0, Lcom/android/zxing/QRCodeDecoder;->mPendingTasks:LOooO0OO/OooO0O0/OooO0OO/OooO;

    new-instance v1, LOooO0OO/OooO0O0/OooO0o0/o00O;

    invoke-direct {v1, p0}, LOooO0OO/OooO0O0/OooO0o0/o00O;-><init>(Lcom/android/zxing/QRCodeDecoder;)V

    iput-object v1, p0, Lcom/android/zxing/QRCodeDecoder;->mHideTipCallback:Lio/reactivex/functions/Action;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/zxing/QRCodeDecoder;->mScanResult:Ljava/lang/String;

    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v1

    iput-object v1, p0, Lcom/android/zxing/QRCodeDecoder;->mSubjects:Lio/reactivex/subjects/PublishSubject;

    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/android/zxing/DecodeFormats;->QR_CODE_FORMATS:Ljava/util/Vector;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v4, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    sget-object v0, Lio/reactivex/BackpressureStrategy;->LATEST:Lio/reactivex/BackpressureStrategy;

    invoke-virtual {v1, v0}, Lio/reactivex/Observable;->toFlowable(Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, LOooO0OO/OooO0O0/OooO0o0/o00OO0OO;

    invoke-direct {v1, p0}, LOooO0OO/OooO0O0/OooO0o0/o00OO0OO;-><init>(Lcom/android/zxing/QRCodeDecoder;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, LOooO0OO/OooO0O0/OooO0o0/o00OO00O;

    invoke-direct {v1, p0}, LOooO0OO/OooO0O0/OooO0o0/o00OO00O;-><init>(Lcom/android/zxing/QRCodeDecoder;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/zxing/QRCodeDecoder;->mDecodeDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/zxing/QRCodeDecoder;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/zxing/QRCodeDecoder;->hideQRCodeTip()V

    return-void
.end method

.method public static synthetic OooO0O0(Lcom/android/zxing/QRCodeDecoder;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/zxing/QRCodeDecoder;->hideQRCodeTip()V

    return-void
.end method

.method public static getInstanceOpt()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/zxing/QRCodeDecoder;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/zxing/PreviewDecodeManager;->getInstance()Lcom/android/zxing/PreviewDecodeManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/zxing/PreviewDecodeManager;->getDecoder(I)Lcom/android/zxing/Decoder;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private hideQRCodeTip()V
    .locals 1

    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, LOooO0OO/OooO0O0/OooO0o0/o00OO000;->o0000o0o:LOooO0OO/OooO0O0/OooO0o0/o00OO000;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic lambda$hideQRCodeTip$3(Lcom/android/camera/protocol/protocols/BottomPopupTips;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "bottomPopupTips"
        }
    .end annotation

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->hideQrCodeTip()V

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->reConfigAiTip()Z

    return-void
.end method

.method private synthetic lambda$new$0(Lcom/android/zxing/PreviewImage;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "previewImage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decode E: previewImage is null? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QRCodeDecoder"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/zxing/QRCodeDecoder;->decode(Lcom/android/zxing/PreviewImage;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$1(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decode X: result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QRCodeDecoder"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/android/zxing/Decoder;->mDecoding:Z

    iget-object v0, p0, Lcom/android/zxing/QRCodeDecoder;->mScanResult:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/android/zxing/Decoder;->mDecoding:Z

    iget-object v0, p0, Lcom/android/zxing/QRCodeDecoder;->mScanResult:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    xor-int/2addr v0, v2

    if-nez v0, :cond_1

    return-void

    :cond_1
    iput-object p1, p0, Lcom/android/zxing/QRCodeDecoder;->mScanResult:Ljava/lang/String;

    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/zxing/Decoder;->mDecoding:Z

    if-nez v3, :cond_3

    if-eqz v2, :cond_2

    const/16 v3, 0x8

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v1, v4, v5}, Lcom/android/camera/protocol/protocols/TopAlert;->alertAiDetectTipHint(IIJ)V

    :cond_2
    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->showQrCodeTip(Ljava/lang/String;)V

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p1

    invoke-virtual {p1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0O0000O()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/zxing/QRCodeDecoder;->mPendingTasks:LOooO0OO/OooO0O0/OooO0OO/OooO;

    const-wide/16 v0, 0xbb8

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    iget-object p0, p0, Lcom/android/zxing/QRCodeDecoder;->mHideTipCallback:Lio/reactivex/functions/Action;

    invoke-virtual {p1, v0, v1, v2, p0}, LOooO0OO/OooO0O0/OooO0OO/OooO;->OooO0OO(JLio/reactivex/Scheduler;Lio/reactivex/functions/Action;)V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->hideQrCodeTip()V

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p1

    invoke-virtual {p1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0O0000O()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/zxing/QRCodeDecoder;->mPendingTasks:LOooO0OO/OooO0O0/OooO0OO/OooO;

    iget-object p0, p0, Lcom/android/zxing/QRCodeDecoder;->mHideTipCallback:Lio/reactivex/functions/Action;

    invoke-virtual {p1, p0}, LOooO0OO/OooO0O0/OooO0OO/OooO;->OooO00o(Lio/reactivex/functions/Action;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private synthetic lambda$startDecode$2(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "hash"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "excess 15s , hide qr code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "QRCodeDecoder"

    invoke-static {v1, p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/zxing/QRCodeDecoder;->hideQRCodeTip()V

    return-void
.end method


# virtual methods
.method public synthetic OooO0OO(Lcom/android/zxing/PreviewImage;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/zxing/QRCodeDecoder;->lambda$new$0(Lcom/android/zxing/PreviewImage;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public synthetic OooO0Oo(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/zxing/QRCodeDecoder;->lambda$new$1(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic OooO0o0(Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/zxing/QRCodeDecoder;->lambda$startDecode$2(Ljava/lang/Integer;)V

    return-void
.end method

.method public decode(Lcom/android/zxing/PreviewImage;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    const-string v0, ""

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getData()[B

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getData()[B

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getWidth()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getHeight()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_4

    :cond_0
    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getData()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getHeight()I

    move-result v9

    mul-int p1, v8, v9

    new-array v2, p1, [B

    array-length v3, v1

    const/4 v10, 0x0

    if-le v3, p1, :cond_1

    invoke-static {v1, v10, v2, v10, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v2

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_0
    new-instance p1, Lcom/android/zxing/YUVLuminanceSource;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move v4, v8

    move v5, v9

    invoke-direct/range {v2 .. v9}, Lcom/android/zxing/YUVLuminanceSource;-><init>([BIIIIII)V

    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    new-instance v2, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v2, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v1, v2}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    :try_start_0
    iget-object p1, p0, Lcom/android/zxing/QRCodeDecoder;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p1, v1}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/zxing/QRCodeDecoder;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    :try_start_1
    const-string p1, "QRCodeDecoder"

    const-string v1, "decode: failed...  "

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-object v0

    :goto_3
    iget-object p0, p0, Lcom/android/zxing/QRCodeDecoder;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    throw p1

    :cond_3
    :goto_4
    return-object v0
.end method

.method public getDecodeInterval()J
    .locals 2

    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public getDecodeMaxCount()I
    .locals 0

    const/16 p0, 0xf

    return p0
.end method

.method public onPreviewFrame(Lcom/android/zxing/PreviewImage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previewImage"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/zxing/QRCodeDecoder;->mSubjects:Lio/reactivex/subjects/PublishSubject;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public quit()V
    .locals 0

    iget-object p0, p0, Lcom/android/zxing/QRCodeDecoder;->mPendingTasks:LOooO0OO/OooO0O0/OooO0OO/OooO;

    invoke-virtual {p0}, LOooO0OO/OooO0O0/OooO0OO/OooO;->OooO0O0()V

    return-void
.end method

.method public resetScanResult()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/zxing/Decoder;->mDecoding:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/zxing/QRCodeDecoder;->mScanResult:Ljava/lang/String;

    return-void
.end method

.method public startDecode()V
    .locals 4

    invoke-super {p0}, Lcom/android/zxing/Decoder;->startDecode()V

    iget-object v0, p0, Lcom/android/zxing/Decoder;->mDecodingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/Scheduler;

    new-instance v2, LOooO0OO/OooO0O0/OooO0o0/oo0oOO0;

    invoke-direct {v2, p0}, LOooO0OO/OooO0O0/OooO0o0/oo0oOO0;-><init>(Lcom/android/zxing/QRCodeDecoder;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDecode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "QRCodeDecoder"

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v0

    invoke-virtual {v0}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0O0000O()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/zxing/QRCodeDecoder;->getDecodeMaxCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/Observable;->delaySubscription(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, LOooO0OO/OooO0O0/OooO0o0/o00OO0O0;

    invoke-direct {v1, p0}, LOooO0OO/OooO0O0/OooO0o0/o00OO0O0;-><init>(Lcom/android/zxing/QRCodeDecoder;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/zxing/QRCodeDecoder;->mResetTimerDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public stopDecode()V
    .locals 1

    invoke-super {p0}, Lcom/android/zxing/Decoder;->stopDecode()V

    iget-object v0, p0, Lcom/android/zxing/QRCodeDecoder;->mDecodeDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/zxing/QRCodeDecoder;->mDecodeDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    iget-object v0, p0, Lcom/android/zxing/QRCodeDecoder;->mResetTimerDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/zxing/QRCodeDecoder;->mResetTimerDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {p0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_1
    return-void
.end method
