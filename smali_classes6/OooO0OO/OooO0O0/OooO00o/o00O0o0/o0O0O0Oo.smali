.class public final synthetic LOooO0OO/OooO0O0/OooO00o/o00O0o0/o0O0O0Oo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic OooO00o:LOooO0OO/OooO0O0/OooO00o/o00O0o0/o0O0O0Oo;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0OO/OooO0O0/OooO00o/o00O0o0/o0O0O0Oo;

    invoke-direct {v0}, LOooO0OO/OooO0O0/OooO00o/o00O0o0/o0O0O0Oo;-><init>()V

    sput-object v0, LOooO0OO/OooO0O0/OooO00o/o00O0o0/o0O0O0Oo;->OooO00o:LOooO0OO/OooO0O0/OooO00o/o00O0o0/o0O0O0Oo;

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

    check-cast p1, Lcom/android/camera/protocol/protocols/ModeChangeController;

    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ModeChangeController;->modeChanging()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
