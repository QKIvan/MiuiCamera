.class public LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o$OooO0O0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o;->OooOO0(Ljava/lang/Object;Ljava/lang/Object;LOooO0oo/OooO00o/OooO0O0/o000OoO/OooO0OO;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final o0000o:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final o0000o0o:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final o0000oO0:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final synthetic o0000oOO:LOooO0oo/OooO00o/OooO0O0/o000OoO/OooO0OO;

.field public final synthetic o0000oOo:Ljava/lang/Object;

.field public final synthetic o0000oo0:Ljava/lang/Object;

.field public final synthetic o0000ooO:LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o;


# direct methods
.method public constructor <init>(LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o;LOooO0oo/OooO00o/OooO0O0/o000OoO/OooO0OO;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o$OooO0O0;->o0000ooO:LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o;

    iput-object p2, p0, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o$OooO0O0;->o0000oOO:LOooO0oo/OooO00o/OooO0O0/o000OoO/OooO0OO;

    iput-object p3, p0, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o$OooO0O0;->o0000oOo:Ljava/lang/Object;

    iput-object p4, p0, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o$OooO0O0;->o0000oo0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o$OooO0O0;->o0000o0o:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o$OooO0O0;->o0000o:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o$OooO0O0;->o0000oO0:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public OooO00o()LOooO0oo/OooO00o/OooO0O0/o000O0/OooO;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o$OooO0O0;->OooO0O0(JLjava/util/concurrent/TimeUnit;)LOooO0oo/OooO00o/OooO0O0/o000O0/OooO;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public OooO0O0(JLjava/util/concurrent/TimeUnit;)LOooO0oo/OooO00o/OooO0O0/o000O0/OooO;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    :goto_0
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o$OooO0O0;->o0000oO0:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2

    :cond_0
    :try_start_2
    iget-object v2, p0, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o$OooO0O0;->o0000o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v3, p0, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o$OooO0O0;->o0000ooO:LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o;

    iget-object v4, p0, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o$OooO0O0;->o0000oOo:Ljava/lang/Object;

    iget-object v5, p0, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o$OooO0O0;->o0000oo0:Ljava/lang/Object;

    move-wide v6, p1

    move-object v8, p3

    move-object v9, p0

    invoke-static/range {v3 .. v9}, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o;->OooOOO(LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o;Ljava/lang/Object;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Future;)LOooO0oo/OooO00o/OooO0O0/o000O0/OooO;

    move-result-object v2

    iget-object v3, p0, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o$OooO0O0;->o0000ooO:LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o;

    invoke-static {v3}, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o;->OooOOOO(LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o;)I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v2}, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO;->OooO0oo()J

    move-result-wide v3

    iget-object v5, p0, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o$OooO0O0;->o0000ooO:LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o;

    invoke-static {v5}, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o;->OooOOOO(LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o;)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1

    iget-object v3, p0, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o$OooO0O0;->o0000ooO:LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o;

    invoke-virtual {v3, v2}, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o;->Oooo0O0(LOooO0oo/OooO00o/OooO0O0/o000O0/OooO;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO;->OooO00o()V

    iget-object v3, p0, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o$OooO0O0;->o0000ooO:LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o;

    invoke-virtual {v3, v2, v0}, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o;->Oooo00O(LOooO0oo/OooO00o/OooO0O0/o000O0/OooO;Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_1
    :try_start_4
    iget-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o$OooO0O0;->o0000o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o$OooO0O0;->o0000oO0:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o$OooO0O0;->o0000o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o$OooO0O0;->o0000ooO:LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o;

    invoke-virtual {p1, v2}, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o;->OooOoo0(LOooO0oo/OooO00o/OooO0O0/o000O0/OooO;)V

    iget-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o$OooO0O0;->o0000oOO:LOooO0oo/OooO00o/OooO0O0/o000OoO/OooO0OO;

    if-eqz p1, :cond_2

    invoke-interface {p1, v2}, LOooO0oo/OooO00o/OooO0O0/o000OoO/OooO0OO;->OooO00o(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-object v2

    :cond_3
    :try_start_6
    iget-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o$OooO0O0;->o0000ooO:LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o;

    invoke-virtual {p1, v2, v1}, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o;->Oooo00O(LOooO0oo/OooO00o/OooO0O0/o000O0/OooO;Z)V

    new-instance p1, Ljava/util/concurrent/ExecutionException;

    invoke-static {}, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o;->OooOOO0()Ljava/lang/Exception;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/util/concurrent/ExecutionException;

    invoke-static {}, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o;->OooOOO0()Ljava/lang/Exception;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_7
    iget-object p2, p0, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o$OooO0O0;->o0000o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o$OooO0O0;->o0000oOO:LOooO0oo/OooO00o/OooO0O0/o000OoO/OooO0OO;

    if-eqz p2, :cond_5

    invoke-interface {p2, p1}, LOooO0oo/OooO00o/OooO0O0/o000OoO/OooO0OO;->OooO0O0(Ljava/lang/Exception;)V

    :cond_5
    new-instance p2, Ljava/util/concurrent/ExecutionException;

    invoke-direct {p2, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_1
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1
.end method

.method public cancel(Z)Z
    .locals 2

    iget-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o$OooO0O0;->o0000o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o$OooO0O0;->o0000o0o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o$OooO0O0;->o0000ooO:LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o;

    invoke-static {p1}, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o;->OooOO0O(LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o$OooO0O0;->o0000ooO:LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o;

    invoke-static {p1}, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o;->OooOO0o(LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o;)Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o$OooO0O0;->o0000ooO:LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o;

    invoke-static {p1}, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o;->OooOO0O(LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o$OooO0O0;->o0000oOO:LOooO0oo/OooO00o/OooO0O0/o000OoO/OooO0OO;

    if-eqz p0, :cond_0

    invoke-interface {p0}, LOooO0oo/OooO00o/OooO0O0/o000OoO/OooO0OO;->cancelled()V

    :cond_0
    return v1

    :catchall_0
    move-exception p1

    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o$OooO0O0;->o0000ooO:LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o;

    invoke-static {p0}, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o;->OooOO0O(LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o;)Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_1
    return v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    invoke-virtual {p0}, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o$OooO0O0;->OooO00o()LOooO0oo/OooO00o/OooO0O0/o000O0/OooO;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o$OooO0O0;->OooO0O0(JLjava/util/concurrent/TimeUnit;)LOooO0oo/OooO00o/OooO0O0/o000O0/OooO;

    move-result-object p0

    return-object p0
.end method

.method public isCancelled()Z
    .locals 0

    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o$OooO0O0;->o0000o0o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public isDone()Z
    .locals 0

    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o$OooO0O0;->o0000o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method
