.class public LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o$OooO00o;
    }
.end annotation


# instance fields
.field private final OooO:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final OooO00o:I

.field private final OooO0O0:Ljava/net/InetAddress;

.field private final OooO0OO:LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;

.field private final OooO0Oo:Ljavax/net/ServerSocketFactory;

.field private final OooO0o:LOooO0oo/OooO00o/OooO0O0/Oooo000;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0oo/OooO00o/OooO0O0/Oooo000<",
            "+",
            "LOooO0oo/OooO00o/OooO0O0/o000O0O/Oooo000;",
            ">;"
        }
    .end annotation
.end field

.field private final OooO0o0:LOooO0oo/OooO00o/OooO0O0/o000O0Oo/oo000o;

.field private final OooO0oO:LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0OO;

.field private final OooO0oo:LOooO0oo/OooO00o/OooO0O0/OooO;

.field private final OooOO0:Ljava/lang/ThreadGroup;

.field private final OooOO0O:LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooOO0O;

.field private final OooOO0o:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o$OooO00o;",
            ">;"
        }
    .end annotation
.end field

.field private volatile OooOOO:LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0O0;

.field private volatile OooOOO0:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>(ILjava/net/InetAddress;LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;Ljavax/net/ServerSocketFactory;LOooO0oo/OooO00o/OooO0O0/o000O0Oo/oo000o;LOooO0oo/OooO00o/OooO0O0/Oooo000;LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0OO;LOooO0oo/OooO00o/OooO0O0/OooO;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/net/InetAddress;",
            "LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;",
            "Ljavax/net/ServerSocketFactory;",
            "LOooO0oo/OooO00o/OooO0O0/o000O0Oo/oo000o;",
            "LOooO0oo/OooO00o/OooO0O0/Oooo000<",
            "+",
            "LOooO0oo/OooO00o/OooO0O0/o000O0O/Oooo000;",
            ">;",
            "LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0OO;",
            "LOooO0oo/OooO00o/OooO0O0/OooO;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, v0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;->OooO00o:I

    move-object v2, p2

    iput-object v2, v0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;->OooO0O0:Ljava/net/InetAddress;

    move-object v2, p3

    iput-object v2, v0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;->OooO0OO:LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;

    move-object v2, p4

    iput-object v2, v0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;->OooO0Oo:Ljavax/net/ServerSocketFactory;

    move-object v2, p5

    iput-object v2, v0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;->OooO0o0:LOooO0oo/OooO00o/OooO0O0/o000O0Oo/oo000o;

    move-object v2, p6

    iput-object v2, v0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;->OooO0o:LOooO0oo/OooO00o/OooO0O0/Oooo000;

    move-object/from16 v2, p7

    iput-object v2, v0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;->OooO0oO:LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0OO;

    move-object/from16 v2, p8

    iput-object v2, v0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;->OooO0oo:LOooO0oo/OooO00o/OooO0O0/OooO;

    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v4, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v4}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v5, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTTP-listener-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    move-object p1, v2

    move p2, v1

    move p3, v6

    move-wide p4, v7

    move-object p6, v3

    move-object/from16 p7, v4

    move-object/from16 p8, v5

    invoke-direct/range {p1 .. p8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v2, v0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;->OooO:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Ljava/lang/ThreadGroup;

    const-string v2, "HTTP-workers"

    invoke-direct {v1, v2}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;->OooOO0:Ljava/lang/ThreadGroup;

    new-instance v2, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooOO0O;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v4, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v4}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v5, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO;

    const-string v6, "HTTP-worker"

    invoke-direct {v5, v6, v1}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO;-><init>(Ljava/lang/String;Ljava/lang/ThreadGroup;)V

    const/4 v1, 0x0

    const v6, 0x7fffffff

    const-wide/16 v7, 0x1

    move-object p1, v2

    move p2, v1

    move p3, v6

    move-wide p4, v7

    move-object p6, v3

    move-object/from16 p7, v4

    move-object/from16 p8, v5

    invoke-direct/range {p1 .. p8}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooOO0O;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v2, v0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;->OooOO0O:LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooOO0O;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o$OooO00o;->o0000o0o:LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o$OooO00o;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;->OooOO0o:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public OooO00o(JLjava/util/concurrent/TimeUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;->OooOO0O:LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooOO0O;

    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    return-void
.end method

.method public OooO0O0()Ljava/net/InetAddress;
    .locals 0

    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;->OooOOO0:Ljava/net/ServerSocket;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public OooO0OO()I
    .locals 0

    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;->OooOOO0:Ljava/net/ServerSocket;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public OooO0Oo(JLjava/util/concurrent/TimeUnit;)V
    .locals 2

    invoke-virtual {p0}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;->OooO0o()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;->OooO00o(JLjava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    :goto_0
    iget-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;->OooOO0O:LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooOO0O;

    invoke-virtual {p1}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooOO0O;->OooO00o()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooOO0;

    invoke-virtual {p2}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooOO0;->OooO00o()LOooO0oo/OooO00o/OooO0O0/o000OOo;

    move-result-object p2

    :try_start_1
    invoke-interface {p2}, LOooO0oo/OooO00o/OooO0O0/OooOo;->shutdown()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    iget-object p3, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;->OooO0oo:LOooO0oo/OooO00o/OooO0O0/OooO;

    invoke-interface {p3, p2}, LOooO0oo/OooO00o/OooO0O0/OooO;->OooO00o(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public OooO0o()V
    .locals 3

    iget-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;->OooOO0o:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o$OooO00o;->o0000o:LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o$OooO00o;

    sget-object v2, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o$OooO00o;->o0000oO0:LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o$OooO00o;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;->OooO:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    iget-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;->OooOO0O:LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooOO0O;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    iget-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;->OooOOO:LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0O0;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0O0;->OooO0O0()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;->OooO0oo:LOooO0oo/OooO00o/OooO0O0/OooO;

    invoke-interface {v1, v0}, LOooO0oo/OooO00o/OooO0O0/OooO;->OooO00o(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;->OooOO0:Ljava/lang/ThreadGroup;

    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->interrupt()V

    :cond_1
    return-void
.end method

.method public OooO0o0()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;->OooOO0o:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o$OooO00o;->o0000o0o:LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o$OooO00o;

    sget-object v2, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o$OooO00o;->o0000o:LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o$OooO00o;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;->OooO0Oo:Ljavax/net/ServerSocketFactory;

    iget v1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;->OooO00o:I

    iget-object v2, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;->OooO0OO:LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;

    invoke-virtual {v2}, LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;->OooO0Oo()I

    move-result v2

    iget-object v3, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;->OooO0O0:Ljava/net/InetAddress;

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ServerSocketFactory;->createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;

    move-result-object v0

    iput-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;->OooOOO0:Ljava/net/ServerSocket;

    iget-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;->OooOOO0:Ljava/net/ServerSocket;

    iget-object v1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;->OooO0OO:LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;

    invoke-virtual {v1}, LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;->OooOO0O()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    iget-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;->OooO0OO:LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;

    invoke-virtual {v0}, LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;->OooO0o0()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;->OooOOO0:Ljava/net/ServerSocket;

    iget-object v1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;->OooO0OO:LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;

    invoke-virtual {v1}, LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;->OooO0o0()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReceiveBufferSize(I)V

    :cond_0
    iget-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;->OooO0oO:LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0OO;

    if-eqz v0, :cond_1

    iget-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;->OooOOO0:Ljava/net/ServerSocket;

    instance-of v0, v0, Ljavax/net/ssl/SSLServerSocket;

    if-eqz v0, :cond_1

    iget-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;->OooO0oO:LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0OO;

    iget-object v1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;->OooOOO0:Ljava/net/ServerSocket;

    check-cast v1, Ljavax/net/ssl/SSLServerSocket;

    invoke-interface {v0, v1}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0OO;->OooO00o(Ljavax/net/ssl/SSLServerSocket;)V

    :cond_1
    new-instance v0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0O0;

    iget-object v3, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;->OooO0OO:LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;

    iget-object v4, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;->OooOOO0:Ljava/net/ServerSocket;

    iget-object v5, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;->OooO0o0:LOooO0oo/OooO00o/OooO0O0/o000O0Oo/oo000o;

    iget-object v6, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;->OooO0o:LOooO0oo/OooO00o/OooO0O0/Oooo000;

    iget-object v7, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;->OooO0oo:LOooO0oo/OooO00o/OooO0O0/OooO;

    iget-object v8, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;->OooOO0O:LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooOO0O;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0O0;-><init>(LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;Ljava/net/ServerSocket;LOooO0oo/OooO00o/OooO0O0/o000O0Oo/oo000o;LOooO0oo/OooO00o/OooO0O0/Oooo000;LOooO0oo/OooO00o/OooO0O0/OooO;Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;->OooOOO:LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0O0;

    iget-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;->OooO:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO00o;->OooOOO:LOooO0oo/OooO00o/OooO0O0/o000O0O/o0OO00O/OooO0O0;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
