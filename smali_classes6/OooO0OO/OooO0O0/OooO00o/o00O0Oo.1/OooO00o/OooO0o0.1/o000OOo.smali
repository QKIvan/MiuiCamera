.class public final synthetic LOooO0OO/OooO0O0/OooO00o/o00O0Oo/OooO00o/OooO0o0/o000OOo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic o0000o0o:Lcom/android/camera/features/mode/doc/DocModule;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mode/doc/DocModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0OO/OooO0O0/OooO00o/o00O0Oo/OooO00o/OooO0o0/o000OOo;->o0000o0o:Lcom/android/camera/features/mode/doc/DocModule;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, LOooO0OO/OooO0O0/OooO00o/o00O0Oo/OooO00o/OooO0o0/o000OOo;->o0000o0o:Lcom/android/camera/features/mode/doc/DocModule;

    check-cast p1, Lcom/android/zxing/DocumentDecoder;

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mode/doc/DocModule;->OooOoo0(Lcom/android/zxing/DocumentDecoder;)V

    return-void
.end method
