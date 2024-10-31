.class public Lcom/android/camera/module/loader/camera2/ButtonStatus$StatusRunnable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/loader/camera2/ButtonStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatusRunnable"
.end annotation


# instance fields
.field public mCancelRunnable:Ljava/lang/Runnable;

.field public mScheduler:Lio/reactivex/Scheduler;

.field public mUpRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Lio/reactivex/Scheduler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "upRunnable",
            "cancelRunnable",
            "scheduler"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/ButtonStatus$StatusRunnable;->mUpRunnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/camera/module/loader/camera2/ButtonStatus$StatusRunnable;->mCancelRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/camera/module/loader/camera2/ButtonStatus$StatusRunnable;->mScheduler:Lio/reactivex/Scheduler;

    return-void
.end method
