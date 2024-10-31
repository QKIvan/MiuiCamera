.class public Lcom/android/camera/module/loader/camera2/FocusManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/loader/camera2/FocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/android/camera/module/loader/camera2/FocusTask;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/loader/camera2/FocusManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/loader/camera2/FocusManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/camera/module/loader/camera2/FocusTask;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "focusTask"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$100(Lcom/android/camera/module/loader/camera2/FocusManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {v1}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$200(Lcom/android/camera/module/loader/camera2/FocusManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "focusResult: getFocusTrigger="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->getFocusTrigger()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isSuccess="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isSuccess()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isFocusing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isFocusing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {v2}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$300(Lcom/android/camera/module/loader/camera2/FocusManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->getFocusTrigger()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->getFocusTrigger()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->getFocusTrigger()I

    move-result v0

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-ne v0, v4, :cond_5

    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$500(Lcom/android/camera/module/loader/camera2/FocusManager;)I

    move-result p1

    if-eq p1, v1, :cond_3

    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$600(Lcom/android/camera/module/loader/camera2/FocusManager;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p1, v3}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$700(Lcom/android/camera/module/loader/camera2/FocusManager;I)V

    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p1, v3}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$800(Lcom/android/camera/module/loader/camera2/FocusManager;I)V

    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p0, v5}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$1502(Lcom/android/camera/module/loader/camera2/FocusManager;Z)Z

    goto/16 :goto_4

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$602(Lcom/android/camera/module/loader/camera2/FocusManager;Z)Z

    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->getCurrentFocusState()I

    move-result p1

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {v0, v2}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$700(Lcom/android/camera/module/loader/camera2/FocusManager;I)V

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {v0, v2}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$800(Lcom/android/camera/module/loader/camera2/FocusManager;I)V

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->updateFocusUI()V

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$900(Lcom/android/camera/module/loader/camera2/FocusManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$900(Lcom/android/camera/module/loader/camera2/FocusManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {v0, v5}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$1002(Lcom/android/camera/module/loader/camera2/FocusManager;Z)Z

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$1100(Lcom/android/camera/module/loader/camera2/FocusManager;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {v0, p1, v2}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$1200(Lcom/android/camera/module/loader/camera2/FocusManager;II)V

    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$1300(Lcom/android/camera/module/loader/camera2/FocusManager;)V

    goto/16 :goto_4

    :cond_4
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$1400(Lcom/android/camera/module/loader/camera2/FocusManager;)V

    goto/16 :goto_4

    :cond_5
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$1600(Lcom/android/camera/module/loader/camera2/FocusManager;)I

    move-result v0

    if-ne v0, v1, :cond_8

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p1, v2}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$700(Lcom/android/camera/module/loader/camera2/FocusManager;I)V

    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p1, v2}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$800(Lcom/android/camera/module/loader/camera2/FocusManager;I)V

    move v4, v2

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p1, v4}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$700(Lcom/android/camera/module/loader/camera2/FocusManager;I)V

    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p1, v4}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$800(Lcom/android/camera/module/loader/camera2/FocusManager;I)V

    :goto_1
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->updateFocusUI()V

    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$900(Lcom/android/camera/module/loader/camera2/FocusManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$900(Lcom/android/camera/module/loader/camera2/FocusManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p1, v5}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$1702(Lcom/android/camera/module/loader/camera2/FocusManager;Z)Z

    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$1100(Lcom/android/camera/module/loader/camera2/FocusManager;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p1, v1, v4}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$1200(Lcom/android/camera/module/loader/camera2/FocusManager;II)V

    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$1300(Lcom/android/camera/module/loader/camera2/FocusManager;)V

    goto/16 :goto_4

    :cond_7
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$1400(Lcom/android/camera/module/loader/camera2/FocusManager;)V

    goto/16 :goto_4

    :cond_8
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$1800(Lcom/android/camera/module/loader/camera2/FocusManager;)I

    move-result v0

    if-eq v0, v5, :cond_a

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$1900(Lcom/android/camera/module/loader/camera2/FocusManager;)I

    move-result v0

    if-ne v0, v3, :cond_9

    goto :goto_2

    :cond_9
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$2300(Lcom/android/camera/module/loader/camera2/FocusManager;)I

    goto :goto_4

    :cond_a
    :goto_2
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p1, v2}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$700(Lcom/android/camera/module/loader/camera2/FocusManager;I)V

    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p1, v2}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$800(Lcom/android/camera/module/loader/camera2/FocusManager;I)V

    const-string p1, "auto"

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$2000(Lcom/android/camera/module/loader/camera2/FocusManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$2100(Lcom/android/camera/module/loader/camera2/FocusManager;)I

    move-result p1

    goto :goto_3

    :cond_b
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isAeSuccess()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p1, v2}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$700(Lcom/android/camera/module/loader/camera2/FocusManager;I)V

    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p1, v2}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$800(Lcom/android/camera/module/loader/camera2/FocusManager;I)V

    goto :goto_3

    :cond_c
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p1, v4}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$700(Lcom/android/camera/module/loader/camera2/FocusManager;I)V

    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p1, v4}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$800(Lcom/android/camera/module/loader/camera2/FocusManager;I)V

    :cond_d
    :goto_3
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->updateFocusUI()V

    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$900(Lcom/android/camera/module/loader/camera2/FocusManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$900(Lcom/android/camera/module/loader/camera2/FocusManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p0, v5}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$2202(Lcom/android/camera/module/loader/camera2/FocusManager;Z)Z

    :goto_4
    return-void

    :cond_e
    :goto_5
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/FocusManager$2;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->access$400(Lcom/android/camera/module/loader/camera2/FocusManager;Lcom/android/camera/module/loader/camera2/FocusTask;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "focusTask"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/android/camera/module/loader/camera2/FocusTask;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager$2;->accept(Lcom/android/camera/module/loader/camera2/FocusTask;)V

    return-void
.end method
