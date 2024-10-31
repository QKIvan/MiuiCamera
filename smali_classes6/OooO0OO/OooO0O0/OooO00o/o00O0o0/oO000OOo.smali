.class public final synthetic LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO000OOo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO000OOo;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO000OOo;

    invoke-direct {v0}, LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO000OOo;-><init>()V

    sput-object v0, LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO000OOo;->o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO000OOo;

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

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    invoke-static {p1}, Lcom/android/camera/module/VideoSkyModule;->lambda$onFocusStateChanged$4(Lcom/android/camera2/Camera2Proxy;)V

    return-void
.end method
