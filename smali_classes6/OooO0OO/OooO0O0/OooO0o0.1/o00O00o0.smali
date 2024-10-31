.class public final synthetic LOooO0OO/OooO0O0/OooO0o0/o00O00o0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic o0000o:J

.field public final synthetic o0000o0o:Lcom/xiaomi/ocr/sdk_ocr/OCRData$RegionData;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/ocr/sdk_ocr/OCRData$RegionData;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0OO/OooO0O0/OooO0o0/o00O00o0;->o0000o0o:Lcom/xiaomi/ocr/sdk_ocr/OCRData$RegionData;

    iput-wide p2, p0, LOooO0OO/OooO0O0/OooO0o0/o00O00o0;->o0000o:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, LOooO0OO/OooO0O0/OooO0o0/o00O00o0;->o0000o0o:Lcom/xiaomi/ocr/sdk_ocr/OCRData$RegionData;

    iget-wide v1, p0, LOooO0OO/OooO0O0/OooO0o0/o00O00o0;->o0000o:J

    check-cast p1, Ljava/util/Optional;

    invoke-static {v0, v1, v2, p1}, Lcom/android/zxing/OCRDecoder;->lambda$recognizeOCRContent$8(Lcom/xiaomi/ocr/sdk_ocr/OCRData$RegionData;JLjava/util/Optional;)V

    return-void
.end method
