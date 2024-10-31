.class public final synthetic LOooO0OO/OooO0O0/OooO0o0/oo00o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic o0000o0o:Lcom/xiaomi/ocr/sdk_ocr/OCRData$Location;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/ocr/sdk_ocr/OCRData$Location;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0OO/OooO0O0/OooO0o0/oo00o;->o0000o0o:Lcom/xiaomi/ocr/sdk_ocr/OCRData$Location;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, LOooO0OO/OooO0O0/OooO0o0/oo00o;->o0000o0o:Lcom/xiaomi/ocr/sdk_ocr/OCRData$Location;

    check-cast p1, Lcom/android/camera/protocol/protocols/ocr/OCRProtocol;

    invoke-static {p0, p1}, Lcom/android/zxing/OCRDecoder;->lambda$null$3(Lcom/xiaomi/ocr/sdk_ocr/OCRData$Location;Lcom/android/camera/protocol/protocols/ocr/OCRProtocol;)V

    return-void
.end method
