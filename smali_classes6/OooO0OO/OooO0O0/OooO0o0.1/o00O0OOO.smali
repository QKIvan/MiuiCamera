.class public final synthetic LOooO0OO/OooO0O0/OooO0o0/o00O0OOO;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic o0000o0o:LOooO0OO/OooO0O0/OooO0o0/o00O0OOO;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0OO/OooO0O0/OooO0o0/o00O0OOO;

    invoke-direct {v0}, LOooO0OO/OooO0O0/OooO0o0/o00O0OOO;-><init>()V

    sput-object v0, LOooO0OO/OooO0O0/OooO0o0/o00O0OOO;->o0000o0o:LOooO0OO/OooO0O0/OooO0o0/o00O0OOO;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/xiaomi/ocr/sdk_ocr/OCRData$FocusPoint;

    invoke-static {p1}, Lcom/android/zxing/OCRDecoder;->lambda$launchRegionDetectionTask$2(Lcom/xiaomi/ocr/sdk_ocr/OCRData$FocusPoint;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method
