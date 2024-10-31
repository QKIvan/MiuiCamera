.class public final synthetic LOooO0OO/OooO0O0/OooO0o0/o00OO0OO;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic o0000o0o:Lcom/android/zxing/QRCodeDecoder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/zxing/QRCodeDecoder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0OO/OooO0O0/OooO0o0/o00OO0OO;->o0000o0o:Lcom/android/zxing/QRCodeDecoder;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LOooO0OO/OooO0O0/OooO0o0/o00OO0OO;->o0000o0o:Lcom/android/zxing/QRCodeDecoder;

    check-cast p1, Lcom/android/zxing/PreviewImage;

    invoke-virtual {p0, p1}, Lcom/android/zxing/QRCodeDecoder;->OooO0OO(Lcom/android/zxing/PreviewImage;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
