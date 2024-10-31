.class public final synthetic LOooO0OO/OooO0O0/OooO0o0/oOO00O;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic o0000o0o:Lcom/android/zxing/HandGestureDecoder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/zxing/HandGestureDecoder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0OO/OooO0O0/OooO0o0/oOO00O;->o0000o0o:Lcom/android/zxing/HandGestureDecoder;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LOooO0OO/OooO0O0/OooO0o0/oOO00O;->o0000o0o:Lcom/android/zxing/HandGestureDecoder;

    check-cast p1, Lcom/android/zxing/PreviewImage;

    invoke-virtual {p0, p1}, Lcom/android/zxing/HandGestureDecoder;->OooO00o(Lcom/android/zxing/PreviewImage;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
