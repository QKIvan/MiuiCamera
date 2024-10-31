.class public Lcom/android/zxing/OCRDecoder;
.super Lcom/android/zxing/Decoder;


# static fields
.field private static final DECODE_DELAY_TIME:J = 0x3e8L

.field private static final OCR_DUMP:Z

.field private static final TAG:Ljava/lang/String; = "OCRDecoder"


# instance fields
.field private volatile mFocusPoint:Landroid/graphics/Point;

.field private volatile mIsFocusTypeChanged:Z

.field private volatile mIsOCRRegionDetecting:Z

.field private final mPendingTasks:LOooO0OO/OooO0O0/OooO0OO/OooO;

.field private volatile mRDTaskDisposable:Lio/reactivex/disposables/Disposable;

.field private volatile mRDTaskEmitter:Lio/reactivex/FlowableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/FlowableEmitter<",
            "Lcom/xiaomi/ocr/sdk_ocr/OCRData$FocusPoint;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mRotateFlag:Lcom/xiaomi/ocr/sdk_ocr/OCRData$RotateFlags;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "camera.ocr.dump"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/zxing/OCRDecoder;->OCR_DUMP:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/zxing/Decoder;-><init>()V

    new-instance v0, LOooO0OO/OooO0O0/OooO0OO/OooO;

    invoke-direct {v0}, LOooO0OO/OooO0O0/OooO0OO/OooO;-><init>()V

    iput-object v0, p0, Lcom/android/zxing/OCRDecoder;->mPendingTasks:LOooO0OO/OooO0O0/OooO0OO/OooO;

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "OCRDecoder"

    const-string v1, "OCRDecoder: created"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private cancelRegionDetectionTask()V
    .locals 2

    iget-object v0, p0, Lcom/android/zxing/OCRDecoder;->mRDTaskDisposable:Lio/reactivex/disposables/Disposable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/zxing/OCRDecoder;->mRDTaskDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    iput-object v1, p0, Lcom/android/zxing/OCRDecoder;->mRDTaskDisposable:Lio/reactivex/disposables/Disposable;

    :cond_0
    iput-object v1, p0, Lcom/android/zxing/OCRDecoder;->mRDTaskEmitter:Lio/reactivex/FlowableEmitter;

    return-void
.end method

.method private getCinematicRect(II)Landroid/graphics/Rect;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    invoke-static {}, Lcom/xiaomi/renderengine/gl/GLUtils;->getCinematicAspectRatio()D

    move-result-wide v0

    const/4 p0, 0x0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    if-le p1, p2, :cond_0

    int-to-double v4, p2

    int-to-double v6, p1

    div-double/2addr v6, v0

    sub-double/2addr v4, v6

    div-double/2addr v4, v2

    double-to-int v0, v4

    new-instance v1, Landroid/graphics/Rect;

    sub-int/2addr p2, v0

    invoke-direct {v1, p0, v0, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1

    :cond_0
    int-to-double v4, p1

    int-to-double v6, p2

    div-double/2addr v6, v0

    sub-double/2addr v4, v6

    div-double/2addr v4, v2

    double-to-int v0, v4

    new-instance v1, Landroid/graphics/Rect;

    sub-int/2addr p1, v0

    invoke-direct {v1, v0, p0, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public static getInstanceOpt()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/zxing/OCRDecoder;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/zxing/PreviewDecodeManager;->getInstance()Lcom/android/zxing/PreviewDecodeManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/zxing/PreviewDecodeManager;->getDecoder(I)Lcom/android/zxing/Decoder;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private getOCRFocusPoint(II)Lcom/xiaomi/ocr/sdk_ocr/OCRData$FocusPoint;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/ocr/sdk_ocr/OCRData$FocusPoint;

    invoke-direct {v0}, Lcom/xiaomi/ocr/sdk_ocr/OCRData$FocusPoint;-><init>()V

    iget-object p0, p0, Lcom/android/zxing/OCRDecoder;->mFocusPoint:Landroid/graphics/Point;

    if-eqz p0, :cond_0

    iget v1, p0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    int-to-float p1, p1

    div-float/2addr v1, p1

    iput v1, v0, Lcom/xiaomi/ocr/sdk_ocr/OCRData$FocusPoint;->norm_x:F

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    int-to-float p1, p2

    div-float/2addr p0, p1

    iput p0, v0, Lcom/xiaomi/ocr/sdk_ocr/OCRData$FocusPoint;->norm_y:F

    sget-object p0, Lcom/xiaomi/ocr/sdk_ocr/OCRData$FocusFlags;->FOCUS_TYPE_FORCE:Lcom/xiaomi/ocr/sdk_ocr/OCRData$FocusFlags;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    iput p0, v0, Lcom/xiaomi/ocr/sdk_ocr/OCRData$FocusPoint;->type:I

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f000000    # 0.5f

    iput p0, v0, Lcom/xiaomi/ocr/sdk_ocr/OCRData$FocusPoint;->norm_x:F

    iput p0, v0, Lcom/xiaomi/ocr/sdk_ocr/OCRData$FocusPoint;->norm_y:F

    sget-object p0, Lcom/xiaomi/ocr/sdk_ocr/OCRData$FocusFlags;->FOCUS_TYPE_AUTO:Lcom/xiaomi/ocr/sdk_ocr/OCRData$FocusFlags;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    iput p0, v0, Lcom/xiaomi/ocr/sdk_ocr/OCRData$FocusPoint;->type:I

    :goto_0
    return-object v0
.end method

.method private synthetic lambda$launchRegionDetectionTask$1(Lio/reactivex/FlowableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "flowableEmitter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lio/reactivex/FlowableEmitter;->serialize()Lio/reactivex/FlowableEmitter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/zxing/OCRDecoder;->mRDTaskEmitter:Lio/reactivex/FlowableEmitter;

    return-void
.end method

.method public static synthetic lambda$launchRegionDetectionTask$2(Lcom/xiaomi/ocr/sdk_ocr/OCRData$FocusPoint;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "focusPoint"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/xiaomi/ocr/sdk_ocr/OCREngineWrapper;->getInstance()Lcom/xiaomi/ocr/sdk_ocr/OCREngineWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/ocr/sdk_ocr/OCREngineWrapper;->doOCRRegionDetection(Lcom/xiaomi/ocr/sdk_ocr/OCRData$FocusPoint;)Lcom/xiaomi/ocr/sdk_ocr/OCRData$Location;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$launchRegionDetectionTask$4(Ljava/util/Optional;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "resultOpt"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/ocr/sdk_ocr/OCRData$Location;

    const-string v0, "OCRDecoder"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launchOCRRegionDetectionTask: ocrRegion poly="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/xiaomi/ocr/sdk_ocr/OCRData$Location;->poly:[F

    invoke-static {v3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", box="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/xiaomi/ocr/sdk_ocr/OCRData$Location;->box:[F

    invoke-static {v3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "launchOCRRegionDetectionTask: ocrRegion null"

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/ocr/OCRProtocol;->impl()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LOooO0OO/OooO0O0/OooO0o0/oo00o;

    invoke-direct {v2, p1}, LOooO0OO/OooO0O0/OooO0o0/oo00o;-><init>(Lcom/xiaomi/ocr/sdk_ocr/OCRData$Location;)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iput-boolean v1, p0, Lcom/android/zxing/OCRDecoder;->mIsOCRRegionDetecting:Z

    return-void
.end method

.method public static synthetic lambda$null$3(Lcom/xiaomi/ocr/sdk_ocr/OCRData$Location;Lcom/android/camera/protocol/protocols/ocr/OCRProtocol;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "ocrRegion",
            "protocol"
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/android/camera/protocol/protocols/ocr/OCRProtocol;->onRegionDetected(Lcom/xiaomi/ocr/sdk_ocr/OCRData$Location;)V

    return-void
.end method

.method public static synthetic lambda$null$5(Lcom/xiaomi/ocr/sdk_ocr/OCRData$OCRResult;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "it"
        }
    .end annotation

    iget-object p0, p0, Lcom/xiaomi/ocr/sdk_ocr/OCRData$OCRResult;->total_text:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic lambda$null$7(Lcom/xiaomi/ocr/sdk_ocr/OCRData$RegionData;Ljava/util/Optional;JLcom/android/camera/protocol/protocols/ocr/OCRContentProtocol;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "regionData",
            "resultOpt",
            "taskId",
            "protocol"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/ocr/sdk_ocr/OCRData$OCRResult;

    invoke-interface {p4, p0, p1, p2, p3}, Lcom/android/camera/protocol/protocols/ocr/OCRContentProtocol;->onOCRRecognitionDone(Lcom/xiaomi/ocr/sdk_ocr/OCRData$RegionData;Lcom/xiaomi/ocr/sdk_ocr/OCRData$OCRResult;J)V

    return-void
.end method

.method public static synthetic lambda$quit$9()V
    .locals 3

    invoke-static {}, Lcom/xiaomi/ocr/sdk_ocr/OCREngineWrapper;->getInstance()Lcom/xiaomi/ocr/sdk_ocr/OCREngineWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/ocr/sdk_ocr/OCREngineWrapper;->releaseEngine()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OCRDecoder"

    const-string v2, "quit: OCREngine released"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$recognizeOCRContent$6(Lcom/xiaomi/ocr/sdk_ocr/OCRData$RegionData;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "regionData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/xiaomi/ocr/sdk_ocr/OCREngineWrapper;->getInstance()Lcom/xiaomi/ocr/sdk_ocr/OCREngineWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/ocr/sdk_ocr/OCREngineWrapper;->doOCRRecognition(Lcom/xiaomi/ocr/sdk_ocr/OCRData$RegionData;)Lcom/xiaomi/ocr/sdk_ocr/OCRData$OCRResult;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, LOooO0OO/OooO0O0/OooO0o0/o00O0O0O;->OooO00o:LOooO0OO/OooO0O0/OooO0o0/o00O0O0O;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$recognizeOCRContent$8(Lcom/xiaomi/ocr/sdk_ocr/OCRData$RegionData;JLjava/util/Optional;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "regionData",
            "taskId",
            "resultOpt"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/protocol/protocols/ocr/OCRContentProtocol;->impl()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO0OO/OooO0O0/OooO0o0/oo0o0O0;

    invoke-direct {v1, p0, p3, p1, p2}, LOooO0OO/OooO0O0/OooO0o0/oo0o0O0;-><init>(Lcom/xiaomi/ocr/sdk_ocr/OCRData$RegionData;Ljava/util/Optional;J)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$startDecodeWithDelay$0()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/xiaomi/ocr/sdk_ocr/OCREngineWrapper;->getInstance()Lcom/xiaomi/ocr/sdk_ocr/OCREngineWrapper;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/ocr/sdk_ocr/OCREngineWrapper;->initEngine(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "OCRDecoder"

    if-nez v0, :cond_0

    new-array p0, v1, [Ljava/lang/Object;

    const-string/jumbo v0, "startDecodeWithDelay: init OCR engine failed!"

    invoke-static {v2, v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/zxing/OCRDecoder;->launchRegionDetectionTask()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/zxing/Decoder;->mDecoding:Z

    new-array p0, v1, [Ljava/lang/Object;

    const-string/jumbo v0, "startDecodeWithDelay: real decode started"

    invoke-static {v2, v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private launchRegionDetectionTask()V
    .locals 4

    new-instance v0, LOooO0OO/OooO0O0/OooO0o0/o00O0O00;

    invoke-direct {v0, p0}, LOooO0OO/OooO0O0/OooO0o0/o00O0O00;-><init>(Lcom/android/zxing/OCRDecoder;)V

    sget-object v1, Lio/reactivex/BackpressureStrategy;->DROP:Lio/reactivex/BackpressureStrategy;

    invoke-static {v0, v1}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;ZI)Lio/reactivex/Flowable;

    move-result-object v0

    sget-object v1, LOooO0OO/OooO0O0/OooO0o0/o00O0OOO;->o0000o0o:LOooO0OO/OooO0O0/OooO0o0/o00O0OOO;

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, LOooO0OO/OooO0O0/OooO0o0/o00O0OO;

    invoke-direct {v1, p0}, LOooO0OO/OooO0O0/OooO0o0/o00O0OO;-><init>(Lcom/android/zxing/OCRDecoder;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/zxing/OCRDecoder;->mRDTaskDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Lio/reactivex/FlowableEmitter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/zxing/OCRDecoder;->lambda$launchRegionDetectionTask$1(Lio/reactivex/FlowableEmitter;)V

    return-void
.end method

.method public synthetic OooO0O0(Ljava/util/Optional;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/zxing/OCRDecoder;->lambda$launchRegionDetectionTask$4(Ljava/util/Optional;)V

    return-void
.end method

.method public synthetic OooO0OO()V
    .locals 0

    invoke-direct {p0}, Lcom/android/zxing/OCRDecoder;->lambda$startDecodeWithDelay$0()V

    return-void
.end method

.method public getRotateFlag(I)Lcom/xiaomi/ocr/sdk_ocr/OCRData$RotateFlags;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sensorOrientation"
        }
    .end annotation

    if-eqz p1, :cond_2

    const/16 p0, 0xb4

    if-eq p1, p0, :cond_1

    const/16 p0, 0x10e

    if-eq p1, p0, :cond_0

    sget-object p0, Lcom/xiaomi/ocr/sdk_ocr/OCRData$RotateFlags;->ROTATE_90:Lcom/xiaomi/ocr/sdk_ocr/OCRData$RotateFlags;

    return-object p0

    :cond_0
    sget-object p0, Lcom/xiaomi/ocr/sdk_ocr/OCRData$RotateFlags;->ROTATE_270:Lcom/xiaomi/ocr/sdk_ocr/OCRData$RotateFlags;

    return-object p0

    :cond_1
    sget-object p0, Lcom/xiaomi/ocr/sdk_ocr/OCRData$RotateFlags;->ROTATE_180:Lcom/xiaomi/ocr/sdk_ocr/OCRData$RotateFlags;

    return-object p0

    :cond_2
    sget-object p0, Lcom/xiaomi/ocr/sdk_ocr/OCRData$RotateFlags;->ROTATE_0:Lcom/xiaomi/ocr/sdk_ocr/OCRData$RotateFlags;

    return-object p0
.end method

.method public init(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraID"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSensorOrientation(Lcom/android/camera2/CameraCapabilities;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0x5a

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/zxing/OCRDecoder;->getRotateFlag(I)Lcom/xiaomi/ocr/sdk_ocr/OCRData$RotateFlags;

    move-result-object p1

    iput-object p1, p0, Lcom/android/zxing/OCRDecoder;->mRotateFlag:Lcom/xiaomi/ocr/sdk_ocr/OCRData$RotateFlags;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/zxing/OCRDecoder;->mFocusPoint:Landroid/graphics/Point;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/zxing/OCRDecoder;->mIsFocusTypeChanged:Z

    iput-boolean p1, p0, Lcom/android/zxing/OCRDecoder;->mIsOCRRegionDetecting:Z

    return-void
.end method

.method public isNeedImage()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public needPreviewFrame(Landroid/media/Image;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/zxing/Decoder;->needPreviewFrame(Landroid/media/Image;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/zxing/OCRDecoder;->mIsOCRRegionDetecting:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/zxing/OCRDecoder;->mIsFocusTypeChanged:Z

    if-nez p0, :cond_0

    invoke-static {}, Lcom/xiaomi/ocr/sdk_ocr/OCREngineWrapper;->getInstance()Lcom/xiaomi/ocr/sdk_ocr/OCREngineWrapper;

    move-result-object p0

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/ocr/sdk_ocr/OCREngineWrapper;->isOCRRegionDetectionNeedFrame(J)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onPreviewFrame(Landroid/media/Image;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "image",
            "deviceOrientation"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/zxing/OCRDecoder;->mRDTaskEmitter:Lio/reactivex/FlowableEmitter;

    const-string v1, "OCRDecoder"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array p0, v2, [Ljava/lang/Object;

    const-string p2, "onPreviewFrame: region detection task finished"

    invoke-static {v1, p2, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreviewFrame: Image width="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", height="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1, v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-boolean v5, Lcom/android/zxing/OCRDecoder;->OCR_DUMP:Z

    if-eqz v5, :cond_1

    new-instance v5, Lcom/android/zxing/PreviewImage;

    invoke-direct {v5, p1, p2}, Lcom/android/zxing/PreviewImage;-><init>(Landroid/media/Image;I)V

    invoke-virtual {v5}, Lcom/android/zxing/PreviewImage;->getData()[B

    move-result-object p2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nv21_w_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/zxing/PreviewImage;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "_h_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/zxing/PreviewImage;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/zxing/PreviewImage;->getTimestamp()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5}, Lcom/android/camera/ImageHelper;->saveYuv([BLjava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->getActiveModuleIndex()I

    move-result p2

    invoke-static {p2}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-direct {p0, v3, v4}, Lcom/android/zxing/OCRDecoder;->getCinematicRect(II)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/media/Image;->setCropRect(Landroid/graphics/Rect;)V

    :cond_2
    invoke-static {}, Lcom/xiaomi/ocr/sdk_ocr/OCREngineWrapper;->getInstance()Lcom/xiaomi/ocr/sdk_ocr/OCREngineWrapper;

    move-result-object p2

    iget-object v5, p0, Lcom/android/zxing/OCRDecoder;->mRotateFlag:Lcom/xiaomi/ocr/sdk_ocr/OCRData$RotateFlags;

    invoke-virtual {p2, p1, v5}, Lcom/xiaomi/ocr/sdk_ocr/OCREngineWrapper;->setOCRRegionDetectionImage(Landroid/media/Image;Lcom/xiaomi/ocr/sdk_ocr/OCRData$RotateFlags;)V

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    iput-boolean v2, p0, Lcom/android/zxing/OCRDecoder;->mIsFocusTypeChanged:Z

    invoke-direct {p0, v4, v3}, Lcom/android/zxing/OCRDecoder;->getOCRFocusPoint(II)Lcom/xiaomi/ocr/sdk_ocr/OCRData$FocusPoint;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreviewFrame: FocusPoint norm_x="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/xiaomi/ocr/sdk_ocr/OCRData$FocusPoint;->norm_x:F

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", norm_y="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/xiaomi/ocr/sdk_ocr/OCRData$FocusPoint;->norm_y:F

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, p2, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/zxing/OCRDecoder;->mIsOCRRegionDetecting:Z

    return-void
.end method

.method public quit()V
    .locals 2

    invoke-super {p0}, Lcom/android/zxing/Decoder;->quit()V

    iget-boolean v0, p0, Lcom/android/zxing/Decoder;->mDecoding:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/zxing/Decoder;->mDecoding:Z

    invoke-direct {p0}, Lcom/android/zxing/OCRDecoder;->cancelRegionDetectionTask()V

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p0

    sget-object v0, LOooO0OO/OooO0O0/OooO0o0/o00O0O0;->o0000o0o:LOooO0OO/OooO0O0/OooO0o0/o00O0O0;

    invoke-virtual {p0, v0}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/zxing/OCRDecoder;->mPendingTasks:LOooO0OO/OooO0O0/OooO0OO/OooO;

    invoke-virtual {p0}, LOooO0OO/OooO0O0/OooO0OO/OooO;->OooO0O0()V

    :goto_0
    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "OCRDecoder"

    const-string v1, "quit: done"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public recognizeOCRContent(Lcom/xiaomi/ocr/sdk_ocr/OCRData$RegionData;J)Lio/reactivex/disposables/Disposable;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "regionData",
            "taskId"
        }
    .end annotation

    new-instance p0, LOooO0OO/OooO0O0/OooO0o0/o00O0OO0;

    invoke-direct {p0, p1}, LOooO0OO/OooO0O0/OooO0o0/o00O0OO0;-><init>(Lcom/xiaomi/ocr/sdk_ocr/OCRData$RegionData;)V

    invoke-static {p0}, Lio/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    new-instance v0, LOooO0OO/OooO0O0/OooO0o0/o00O00o0;

    invoke-direct {v0, p1, p2, p3}, LOooO0OO/OooO0O0/OooO0o0/o00O00o0;-><init>(Lcom/xiaomi/ocr/sdk_ocr/OCRData$RegionData;J)V

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    return-object p0
.end method

.method public setFocusPoint(Landroid/graphics/Point;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "focusPoint"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/zxing/OCRDecoder;->mFocusPoint:Landroid/graphics/Point;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/zxing/OCRDecoder;->mIsFocusTypeChanged:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFocusPoint: change to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/zxing/OCRDecoder;->mFocusPoint:Landroid/graphics/Point;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "OCRDecoder"

    invoke-static {v2, p0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/xiaomi/ocr/sdk_ocr/OCREngineWrapper;->getInstance()Lcom/xiaomi/ocr/sdk_ocr/OCREngineWrapper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/xiaomi/ocr/sdk_ocr/OCREngineWrapper;->addFocusType(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/xiaomi/ocr/sdk_ocr/OCREngineWrapper;->getInstance()Lcom/xiaomi/ocr/sdk_ocr/OCREngineWrapper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/xiaomi/ocr/sdk_ocr/OCREngineWrapper;->removeFocusType(I)V

    :goto_0
    return-void
.end method

.method public startDecode()V
    .locals 0

    return-void
.end method

.method public startDecodeWithDelay()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/zxing/Decoder;->mDecoding:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OCRDecoder"

    const-string/jumbo v2, "startDecodeWithDelay: launch"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/zxing/OCRDecoder;->mPendingTasks:LOooO0OO/OooO0O0/OooO0OO/OooO;

    const-wide/16 v1, 0x3e8

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v3

    new-instance v4, LOooO0OO/OooO0O0/OooO0o0/o00O0;

    invoke-direct {v4, p0}, LOooO0OO/OooO0O0/OooO0o0/o00O0;-><init>(Lcom/android/zxing/OCRDecoder;)V

    invoke-virtual {v0, v1, v2, v3, v4}, LOooO0OO/OooO0O0/OooO0OO/OooO;->OooO0OO(JLio/reactivex/Scheduler;Lio/reactivex/functions/Action;)V

    return-void
.end method

.method public stopDecode()V
    .locals 0

    return-void
.end method
