.class public final synthetic LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO0O00o/OooO00o/o0000OO0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic OooO00o:LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO0O00o/OooO00o/o0000OO0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO0O00o/OooO00o/o0000OO0;

    invoke-direct {v0}, LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO0O00o/OooO00o/o0000OO0;-><init>()V

    sput-object v0, LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO0O00o/OooO00o/o0000OO0;->OooO00o:LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO0O00o/OooO00o/o0000OO0;

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

    check-cast p1, Lcom/android/camera/module/Module;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->lambda$configVideoHdrIfNeed$33(Lcom/android/camera/module/Module;)Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    return-object p0
.end method
