.class public final synthetic LOooO0OO/OooO0O0/OooO00o/o00O0Oo/OooO00o/OooO0O0/o00oO0o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic o0000o0o:Landroid/graphics/Point;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Point;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0OO/OooO0O0/OooO00o/o00O0Oo/OooO00o/OooO0O0/o00oO0o;->o0000o0o:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, LOooO0OO/OooO0O0/OooO00o/o00O0Oo/OooO00o/OooO0O0/o00oO0o;->o0000o0o:Landroid/graphics/Point;

    check-cast p1, Lcom/android/zxing/OCRDecoder;

    invoke-static {p0, p1}, Lcom/android/camera/features/mode/capture/CaptureModule;->lambda$handlePreviewTouchEvent$3(Landroid/graphics/Point;Lcom/android/zxing/OCRDecoder;)V

    return-void
.end method
