.class public final synthetic LOooO0OO/OooO0O0/OooO00o/o00O0o0/o000OO00;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00O0o0/o000OO00;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0OO/OooO0O0/OooO00o/o00O0o0/o000OO00;

    invoke-direct {v0}, LOooO0OO/OooO0O0/OooO00o/o00O0o0/o000OO00;-><init>()V

    sput-object v0, LOooO0OO/OooO0O0/OooO00o/o00O0o0/o000OO00;->o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00O0o0/o000OO00;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/camera/protocol/protocols/MainContentProtocol;

    invoke-static {p1}, Lcom/android/camera/module/Camera2Module;->lambda$onSingleTapUp$31(Lcom/android/camera/protocol/protocols/MainContentProtocol;)V

    return-void
.end method
