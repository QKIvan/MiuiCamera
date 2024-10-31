.class public Lcom/android/camera/module/impl/component/FilmDreamImpl$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/inceptionmediaprocess/EffectNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/impl/component/FilmDreamImpl;->startPlay(Landroid/view/Surface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/impl/component/FilmDreamImpl;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/impl/component/FilmDreamImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl$3;->this$0:Lcom/android/camera/module/impl/component/FilmDreamImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnReceiveFailed()V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "FilmDreamImpl"

    const-string v3, "OnReceiveFailed:yes"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl$3;->this$0:Lcom/android/camera/module/impl/component/FilmDreamImpl;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->access$102(Lcom/android/camera/module/impl/component/FilmDreamImpl;Z)Z

    iget-object p0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl$3;->this$0:Lcom/android/camera/module/impl/component/FilmDreamImpl;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->access$200(Lcom/android/camera/module/impl/component/FilmDreamImpl;)Lcom/android/camera/protocol/protocols/FilmDreamProcess;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/FilmDreamProcess;->onResultPreviewFinished(Z)V

    return-void
.end method

.method public OnReceiveFinish()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FilmDreamImpl"

    const-string v2, "OnReceiveFinish:yes"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl$3;->this$0:Lcom/android/camera/module/impl/component/FilmDreamImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->access$102(Lcom/android/camera/module/impl/component/FilmDreamImpl;Z)Z

    iget-object p0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl$3;->this$0:Lcom/android/camera/module/impl/component/FilmDreamImpl;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->access$200(Lcom/android/camera/module/impl/component/FilmDreamImpl;)Lcom/android/camera/protocol/protocols/FilmDreamProcess;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/android/camera/protocol/protocols/FilmDreamProcess;->onResultPreviewFinished(Z)V

    return-void
.end method

.method public OnReceiveFirstFrame()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FilmDreamImpl"

    const-string v2, "OnReceiveFirstFrame:"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl$3;->this$0:Lcom/android/camera/module/impl/component/FilmDreamImpl;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->access$400(Lcom/android/camera/module/impl/component/FilmDreamImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/impl/component/FilmDreamImpl$3$1;

    invoke-direct {v1, p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl$3$1;-><init>(Lcom/android/camera/module/impl/component/FilmDreamImpl$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
