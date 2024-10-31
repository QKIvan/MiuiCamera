.class public final Lcom/faceunity/core/support/FUSchedulerManager;
.super Ljava/lang/Object;


# annotations
.annotation runtime LOooO0o0/o0000Ooo;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000?\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007*\u0001\u0014\u0018\u0000 \u001b2\u00020\u0001:\u0003\u001b\u001c\u001dB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001b\u0010\u0007\u001a\u00020\u00022\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001b\u0010\t\u001a\u00020\u00022\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0005\u00a2\u0006\u0004\u0008\t\u0010\u0008R\"\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u00050\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\u000e\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0011\u001a\u00020\u00108\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0013\u001a\u00020\u00108\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0012R\u0016\u0010\u0015\u001a\u00020\u00148\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u0018\u001a\u00020\u00178\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/faceunity/core/support/FUSchedulerManager;",
        "",
        "LOooO0o0/o00OOOOo;",
        "scheduleNext",
        "()V",
        "Lkotlin/Function0;",
        "unit",
        "executeGLEvent",
        "(LOooO0o0/o00ooOoO/o000O00/OooO00o;)V",
        "addOrdinaryEvent",
        "",
        "mOrdinaryEventQueue",
        "Ljava/util/List;",
        "",
        "mOrdinaryTaskStatus",
        "Z",
        "Ljava/lang/Object;",
        "mAddOrdinaryLock",
        "Ljava/lang/Object;",
        "mTaskLock",
        "com/faceunity/core/support/FUSchedulerManager$mOrdinaryTaskCallback$1",
        "mOrdinaryTaskCallback",
        "Lcom/faceunity/core/support/FUSchedulerManager$mOrdinaryTaskCallback$1;",
        "Lcom/faceunity/toolbox/async/FUSerialScheduler;",
        "mSerialScheduler",
        "Lcom/faceunity/toolbox/async/FUSerialScheduler;",
        "<init>",
        "Companion",
        "OrdinaryTask",
        "OrdinaryTaskCallback",
        "lib_core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/faceunity/core/support/FUSchedulerManager$OrdinaryTaskCallback;,
        Lcom/faceunity/core/support/FUSchedulerManager$OrdinaryTask;,
        Lcom/faceunity/core/support/FUSchedulerManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/faceunity/core/support/FUSchedulerManager$Companion;
    .annotation build LOooO0oo/OooO0OO/OooO00o/OooOOO;
    .end annotation
.end field

.field private static volatile INSTANCE:Lcom/faceunity/core/support/FUSchedulerManager; = null

.field public static final TAG:Ljava/lang/String; = "KIT_FURenderBridge"
    .annotation build LOooO0oo/OooO0OO/OooO00o/OooOOO;
    .end annotation
.end field


# instance fields
.field private final mAddOrdinaryLock:Ljava/lang/Object;

.field private mOrdinaryEventQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LOooO0o0/o00ooOoO/o000O00/OooO00o<",
            "LOooO0o0/o00OOOOo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mOrdinaryTaskCallback:Lcom/faceunity/core/support/FUSchedulerManager$mOrdinaryTaskCallback$1;

.field private volatile mOrdinaryTaskStatus:Z

.field private final mSerialScheduler:Lcom/faceunity/toolbox/async/FUSerialScheduler;

.field private final mTaskLock:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/faceunity/core/support/FUSchedulerManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/faceunity/core/support/FUSchedulerManager$Companion;-><init>(LOooO0o0/o00ooOoO/o000O00O/o0OOO0o;)V

    sput-object v0, Lcom/faceunity/core/support/FUSchedulerManager;->Companion:Lcom/faceunity/core/support/FUSchedulerManager$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/faceunity/toolbox/async/FUSerialScheduler;

    invoke-direct {v0}, Lcom/faceunity/toolbox/async/FUSerialScheduler;-><init>()V

    iput-object v0, p0, Lcom/faceunity/core/support/FUSchedulerManager;->mSerialScheduler:Lcom/faceunity/toolbox/async/FUSerialScheduler;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const-string v1, "Collections.synchronized\u2026rrayList<() -> Unit>(16))"

    invoke-static {v0, v1}, LOooO0o0/o00ooOoO/o000O00O/o0000oo;->OooOOOO(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/faceunity/core/support/FUSchedulerManager;->mOrdinaryEventQueue:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/faceunity/core/support/FUSchedulerManager;->mTaskLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/faceunity/core/support/FUSchedulerManager;->mAddOrdinaryLock:Ljava/lang/Object;

    new-instance v0, Lcom/faceunity/core/support/FUSchedulerManager$mOrdinaryTaskCallback$1;

    invoke-direct {v0, p0}, Lcom/faceunity/core/support/FUSchedulerManager$mOrdinaryTaskCallback$1;-><init>(Lcom/faceunity/core/support/FUSchedulerManager;)V

    iput-object v0, p0, Lcom/faceunity/core/support/FUSchedulerManager;->mOrdinaryTaskCallback:Lcom/faceunity/core/support/FUSchedulerManager$mOrdinaryTaskCallback$1;

    return-void
.end method

.method public synthetic constructor <init>(LOooO0o0/o00ooOoO/o000O00O/o0OOO0o;)V
    .locals 0

    invoke-direct {p0}, Lcom/faceunity/core/support/FUSchedulerManager;-><init>()V

    return-void
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/faceunity/core/support/FUSchedulerManager;
    .locals 1

    sget-object v0, Lcom/faceunity/core/support/FUSchedulerManager;->INSTANCE:Lcom/faceunity/core/support/FUSchedulerManager;

    return-object v0
.end method

.method public static final synthetic access$getMAddOrdinaryLock$p(Lcom/faceunity/core/support/FUSchedulerManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/faceunity/core/support/FUSchedulerManager;->mAddOrdinaryLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$getMOrdinaryTaskStatus$p(Lcom/faceunity/core/support/FUSchedulerManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/faceunity/core/support/FUSchedulerManager;->mOrdinaryTaskStatus:Z

    return p0
.end method

.method public static final synthetic access$scheduleNext(Lcom/faceunity/core/support/FUSchedulerManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/faceunity/core/support/FUSchedulerManager;->scheduleNext()V

    return-void
.end method

.method public static final synthetic access$setINSTANCE$cp(Lcom/faceunity/core/support/FUSchedulerManager;)V
    .locals 0

    sput-object p0, Lcom/faceunity/core/support/FUSchedulerManager;->INSTANCE:Lcom/faceunity/core/support/FUSchedulerManager;

    return-void
.end method

.method public static final synthetic access$setMOrdinaryTaskStatus$p(Lcom/faceunity/core/support/FUSchedulerManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/faceunity/core/support/FUSchedulerManager;->mOrdinaryTaskStatus:Z

    return-void
.end method

.method public static final getInstance$lib_core_release()Lcom/faceunity/core/support/FUSchedulerManager;
    .locals 1
    .annotation runtime LOooO0o0/o00ooOoO/o0000O00;
    .end annotation

    .annotation build LOooO0oo/OooO0OO/OooO00o/OooOOO;
    .end annotation

    sget-object v0, Lcom/faceunity/core/support/FUSchedulerManager;->Companion:Lcom/faceunity/core/support/FUSchedulerManager$Companion;

    invoke-virtual {v0}, Lcom/faceunity/core/support/FUSchedulerManager$Companion;->getInstance$lib_core_release()Lcom/faceunity/core/support/FUSchedulerManager;

    move-result-object v0

    return-object v0
.end method

.method private final scheduleNext()V
    .locals 4

    iget-boolean v0, p0, Lcom/faceunity/core/support/FUSchedulerManager;->mOrdinaryTaskStatus:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/faceunity/core/support/FUSchedulerManager;->mOrdinaryEventQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/faceunity/core/support/FUSchedulerManager;->mOrdinaryTaskStatus:Z

    iget-object v0, p0, Lcom/faceunity/core/support/FUSchedulerManager;->mOrdinaryEventQueue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO0o0/o00ooOoO/o000O00/OooO00o;

    iget-object v1, p0, Lcom/faceunity/core/support/FUSchedulerManager;->mTaskLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/faceunity/core/support/FUSchedulerManager;->mSerialScheduler:Lcom/faceunity/toolbox/async/FUSerialScheduler;

    new-instance v3, Lcom/faceunity/core/support/FUSchedulerManager$scheduleNext$$inlined$synchronized$lambda$1;

    invoke-direct {v3, p0, v0}, Lcom/faceunity/core/support/FUSchedulerManager$scheduleNext$$inlined$synchronized$lambda$1;-><init>(Lcom/faceunity/core/support/FUSchedulerManager;LOooO0o0/o00ooOoO/o000O00/OooO00o;)V

    invoke-virtual {v2, v3}, Lcom/faceunity/toolbox/async/FUSerialScheduler;->execute(Ljava/lang/Runnable;)V

    sget-object p0, LOooO0o0/o00OOOOo;->OooO00o:LOooO0o0/o00OOOOo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final addOrdinaryEvent(LOooO0o0/o00ooOoO/o000O00/OooO00o;)V
    .locals 2
    .param p1    # LOooO0o0/o00ooOoO/o000O00/OooO00o;
        .annotation build LOooO0oo/OooO0OO/OooO00o/OooOOO;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0o0/o00ooOoO/o000O00/OooO00o<",
            "LOooO0o0/o00OOOOo;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "unit"

    invoke-static {p1, v0}, LOooO0o0/o00ooOoO/o000O00O/o0000oo;->OooOOOo(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/faceunity/core/support/FUSchedulerManager;->mAddOrdinaryLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/faceunity/core/support/FUSchedulerManager;->mOrdinaryEventQueue:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/faceunity/core/support/FUSchedulerManager;->scheduleNext()V

    sget-object p0, LOooO0o0/o00OOOOo;->OooO00o:LOooO0o0/o00OOOOo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final executeGLEvent(LOooO0o0/o00ooOoO/o000O00/OooO00o;)V
    .locals 1
    .param p1    # LOooO0o0/o00ooOoO/o000O00/OooO00o;
        .annotation build LOooO0oo/OooO0OO/OooO00o/OooOOO;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0o0/o00ooOoO/o000O00/OooO00o<",
            "LOooO0o0/o00OOOOo;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "unit"

    invoke-static {p1, v0}, LOooO0o0/o00ooOoO/o000O00O/o0000oo;->OooOOOo(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/faceunity/core/support/FUSchedulerManager;->mTaskLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, LOooO0o0/o00ooOoO/o000O00/OooO00o;->invoke()Ljava/lang/Object;

    sget-object p1, LOooO0o0/o00OOOOo;->OooO00o:LOooO0o0/o00OOOOo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
