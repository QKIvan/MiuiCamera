.class public final synthetic LOooO0OO/OooO0O0/OooO00o/o00Oo0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o0000o:Lcom/android/camera/module/loader/base/StartControl;

.field public final synthetic o0000o0o:Lcom/android/camera/Camera;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/Camera;Lcom/android/camera/module/loader/base/StartControl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0OO/OooO0O0/OooO00o/o00Oo0;->o0000o0o:Lcom/android/camera/Camera;

    iput-object p2, p0, LOooO0OO/OooO0O0/OooO00o/o00Oo0;->o0000o:Lcom/android/camera/module/loader/base/StartControl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LOooO0OO/OooO0O0/OooO00o/o00Oo0;->o0000o0o:Lcom/android/camera/Camera;

    iget-object p0, p0, LOooO0OO/OooO0O0/OooO00o/o00Oo0;->o0000o:Lcom/android/camera/module/loader/base/StartControl;

    invoke-virtual {v0, p0}, Lcom/android/camera/Camera;->OooOO0O(Lcom/android/camera/module/loader/base/StartControl;)V

    return-void
.end method
